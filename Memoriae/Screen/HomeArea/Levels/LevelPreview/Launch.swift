//
//  Launch.swift
//  Memoriae
//
//  Created by panandafog on 20.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct Launch: View {
    @State var selectedDifficulty = Double()
    var selectedLevel: Level?
    var space: CGFloat
    private var difCount: Int?

    init(selectedLevel: Level?, space: CGFloat) {
        self.selectedLevel = selectedLevel
        self.space = space
        difCount = selectedLevel?.difficulties?.count
    }
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: space)
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.secondary.opacity(0.1))
                        .frame(height: 80)
                        .cornerRadius(10)
                    VStack {
                        Slider(value: $selectedDifficulty, in: 1...Double(self.difCount ?? 1))
                        HStack {
                            Text("Difficulty:")
                                .font(.headline)
                                .frame(alignment: .leading)
                            Spacer()
                            Text(String(selectedLevel?.difficulties?[Int(selectedDifficulty)].name ?? "<unknown>"))
                                .frame(alignment: .trailing)
                        }
                        Spacer(minLength: 10)
                    }.padding()
                        .frame(height: 50)
                }
                Spacer(minLength: space)
            }
            .padding()
            Button(action: {}, label: {
                ZStack {
                    Text("Start")
                        .font(.headline)
                    Rectangle()
                        .foregroundColor(Color.secondary.opacity(0.1))
                        .frame(width: 70, height: 40)
                        .cornerRadius(10)
                }
            })
                .buttonStyle(PlainButtonStyle())
        }
    }
}
