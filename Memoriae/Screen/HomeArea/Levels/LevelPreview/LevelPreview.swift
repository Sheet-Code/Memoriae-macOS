//
//  LevelPreview.swift
//  Memoriae
//
//  Created by panandafog on 19.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct LevelPreview: View {
    @Binding var selectedLevel: Level?
    var body: some View {
        ScrollView {
            HStack() {
                Rectangle().frame(width: 10, height: 10).hidden()
                Spacer()
                Text(selectedLevel?.title ?? "none")
                    .font(.largeTitle)
                Spacer()
                Button(action: {
                    self.selectedLevel = nil
                }, label: {
                    Text("⨉").font(.subheadline)
                })
                    .buttonStyle(PlainButtonStyle())
            }.padding()

            HStack {
                Spacer(minLength: 50)
                Image(selectedLevel?.picture ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                Spacer(minLength: 50)
            }

            Separator(space: 30)
            CenteredText(space: 30, text: selectedLevel?.description ?? "", font: .headline)
            Separator(space: 30)
            CenteredText(space: 30, text: selectedLevel?.task ?? "", font: .body)

            Launch(selectedLevel: self.selectedLevel, space: 40)
        }
        .frame(minWidth: 300, maxWidth: 400)
    }
}

struct Separator: View {
    var space: CGFloat
    var body: some View {
        Group {
            Spacer(minLength: space)
            Divider()
            Spacer(minLength: space)
        }
    }
}

struct CenteredText: View {
    var space: CGFloat
    var text: String
    var font: Font
    var body: some View {
        HStack {
            Spacer(minLength: space)
            Text(text).font(font)
            Spacer(minLength: space)
        }
    }
}
