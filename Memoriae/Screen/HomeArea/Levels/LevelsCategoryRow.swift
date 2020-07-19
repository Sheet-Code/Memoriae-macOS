//
//  LevelsCategoryRow.swift
//  Memoriae
//
//  Created by panandafog on 06.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct LevelsCategoryRow: View {
    var levels: [Level]
    var categoryName: String

    @Binding var selectedLevel: Level?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.levels) { level in
                        LevelsCategoryItem(level: level, selectedLevel: self.$selectedLevel)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}
