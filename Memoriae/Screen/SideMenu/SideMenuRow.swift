//
//  SideMenuRow.swift
//  Memoriae
//
//  Created by panandafog on 05.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct SideMenuRow: View {
    let item: SideMenu
    @Binding var selectedMenu: SideMenu
    
    var isSelected: Bool {
        selectedMenu == item
    }
    
    var body: some View {
        HStack {
            Text(item.title)
                .font(.headline)
        }
        .padding()
        .onTapGesture {
            self.selectedMenu = self.item
        }
    }
}
