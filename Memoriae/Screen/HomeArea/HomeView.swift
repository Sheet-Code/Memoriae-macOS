//
//  ContentView.swift
//  Memoriae
//
//  Created by panandafog on 05.07.2020.
//  Copyright © 2020 panandafog. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedMenu: SideMenu = .levels
    var body: some View {
        
        HStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    ForEach(SideMenu.allCases) { menu in
                        ZStack(alignment: .leading) {
                            SideMenuRow(item: menu, selectedMenu: self.$selectedMenu)
                                .frame(height: 50)
                            if menu == self.selectedMenu {
                                Rectangle()
                                    .foregroundColor(Color.secondary.opacity(0.1))
                                    .frame(height: 50)
                            }
                        }
                    }
                }
                .padding(.top, 32)
                .frame(width: 250)
            }
            .background(Color.primary.opacity(0.1))
            .layoutPriority(1000)
            selectedMenu.contentView
        }
        .frame(minWidth: 1000, minHeight: 500)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
