//
//  TabView.swift
//  SPOT
//
//  Created by Aaron Nguyen on 5/14/23.
//

import SwiftUI

enum TabTitles: String, CaseIterable {
    case house, safari, message, person
}

struct BottomTabView: View {
    @Binding var selectedTab: TabTitles
    
    private var filledTab: String {
        selectedTab.rawValue + ".fill"
    }

    var body: some View {
        VStack {
            HStack {
                ForEach(TabTitles.allCases, id: \.self) { currentTab in
                    Spacer()
                    
                    Image(systemName:
                        currentTab == selectedTab ? filledTab: currentTab.rawValue
                    )
                    .scaleEffect(currentTab == selectedTab ? 1.25 : 1.0)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.1)) {
                            selectedTab = currentTab
                        }
                    }
                    
                    Spacer()
                }
            }
            .frame(width: nil, height: 50)
            .background(Color.blue)
        }
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView(selectedTab: .constant(.house))
    }
}
