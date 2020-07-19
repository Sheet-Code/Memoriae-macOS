//
//  AchievementsView.swift
//  Memoriae
//
//  Created by panandafog on 05.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct AchievementsView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Im achievements view")
        }
        .frame(minWidth: HomeAreaProperties.minWidth, maxWidth: HomeAreaProperties.maxWidth, minHeight: HomeAreaProperties.minHeight, maxHeight: HomeAreaProperties.maxHeight)
    }
}

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
