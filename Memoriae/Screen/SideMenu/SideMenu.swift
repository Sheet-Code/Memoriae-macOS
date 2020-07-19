//
//  SideMenu.swift
//  Memoriae
//
//  Created by panandafog on 05.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

enum SideMenu: Int, CaseIterable, Identifiable {
    var id: Int {
        return self.rawValue
    }
    
    case levels, achievements, settings
    
    var title: String {
        switch self {
        case .levels:    return "Levels"
        case .achievements:   return "Achievements"
        case .settings:   return "Settings"
        }
    }
    
    var contentView: AnyView {
        switch self {
        case .levels:    return AnyView(LevelsView())
        case .achievements:   return AnyView(AchievementsView())
        case .settings:   return AnyView(SettingsView())
        }
    }
}
