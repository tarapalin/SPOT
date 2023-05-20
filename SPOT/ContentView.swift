//
//  ContentView.swift
//  SPOT
//
//  Created by Tara Palin on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelected: TabTitles = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $tabSelected) {
                    ForEach(TabTitles.allCases, id: \.rawValue) { currentTab in
                        HStack {
                            Image(systemName: currentTab.rawValue)
                            Text("\(currentTab.rawValue.capitalized)")
                                .bold()
                                .animation(nil, value: tabSelected)
                        }
                        .tag(currentTab)
                    }
                }
            }
            
            VStack {
                Spacer()
                BottomTabView(selectedTab: $tabSelected)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
