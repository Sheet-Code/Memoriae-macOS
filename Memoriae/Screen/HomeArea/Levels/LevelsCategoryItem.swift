//
//  LevelsCategoryItem.swift
//  Memoriae
//
//  Created by panandafog on 06.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct LevelsCategoryItem: View {
    var level: Level

    @Binding var selectedLevel: Level?

    var body: some View {
        VStack(alignment: .leading) {
            Image(level.picture ?? "")
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(level.title)
                .font(.caption)
        }
        .padding(.leading, 15)
        .onTapGesture {
            self.selectedLevel = self.level
        }
    }
}
