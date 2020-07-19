//
//  ResourcesManager.swift
//  Memoriae
//
//  Created by panandafog on 06.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

enum ResourcesManager {

    private static var levelsAsset: NSDataAsset? {
        NSDataAsset(name: "levels.json")
    }

    static func getLevels() -> [Level]? {
        guard let assetData = levelsAsset?.data else {
            return nil
        }
        return try? JSONDecoder().decode([Level].self, from: assetData)
    }

    static func getImage(name: String) -> Image? {
        Image(name)
    }
}
