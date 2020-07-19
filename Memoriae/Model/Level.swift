//
//  Level.swift
//  Memoriae
//
//  Created by panandafog on 06.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

//struct Level: Identifiable {
//
//    var id: Int
//    let image: String
//    let title: String
//    let category: String
//}

struct Level: Decodable, Identifiable {

    let id: Int
    let title, kind, task, description, category: String
    let picture: String?
    let pictureSets: [TOMMPictureSet]?
    let dotsSet: DotsSet?
    let standardIndex: Int?
    var difficulties: [Difficulty]?
}
