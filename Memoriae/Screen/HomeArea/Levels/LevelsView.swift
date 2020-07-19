//
//  LevelsView.swift
//  Memoriae
//
//  Created by panandafog on 05.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct LevelsView: View {

    var levels: [Level] = []
    @State var selectedLevel: Level?

    init() {
        guard let levels = ResourcesManager.getLevels() else {
            return
        }
        self.levels = levels
    }

    var categories: [String: [Level]] {
        Dictionary(
            grouping: levels,
            by: { $0.category }
        )
    }

    var body: some View {
        HSplitView {
            List {
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    LevelsCategoryRow(levels: self.categories[key]!, categoryName: key, selectedLevel: self.$selectedLevel)
                }
            }
            .frame(minWidth: 400)

            if self.selectedLevel != nil {
                LevelPreview(selectedLevel: self.$selectedLevel)
            }
        }
        .frame(minWidth: HomeAreaProperties.minWidth, maxWidth: HomeAreaProperties.maxWidth, minHeight: HomeAreaProperties.minHeight, maxHeight: HomeAreaProperties.maxHeight)
    }
}

struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
    }
}
