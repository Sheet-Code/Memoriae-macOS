//
//  TOMMPictureSet.swift
//  Memoriae
//
//  Created by panandafog on 06.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

struct TOMMPictureSet: Codable {
    let picture: String
    let time: Float
    let questions: [Question]
}

struct Question: Codable {
    let question: String
    let rightAnswer: Int
    let answers: [String]
}
