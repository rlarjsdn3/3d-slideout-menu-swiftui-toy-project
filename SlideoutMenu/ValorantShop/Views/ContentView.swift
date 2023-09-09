//
//  ContentView.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 7/23/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - WRAPPER PROPERTIES
    
    @State private var showSideBar: Bool = false
    @State private var selectedTab: SideTabButton = .shop
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            SideBarView($selectedTab)
            
            contentView
        }
        .overlay {
            sideBarButton
        }
    }
}

// MARK: - EXTENSION

extension ContentView {
    var contentView: some View {
        ZStack {
            secondView
            
            selectedView
        }
        .ignoresSafeArea()
    }
    
    var secondView: some View {
        Color.white.opacity(0.5)
            .cornerRadius(showSideBar ? 30 : 0)
            .offset(x: showSideBar ? 140 : 0)
            .scaleEffect(showSideBar ? 0.62 : 1)
            .rotation3DEffect(
                showSideBar ? .degrees(30) : .degrees(0),
                axis: (x: 0.0, y: -1.0, z: 0.0)
            )
    }
    
    var selectedView: some View {
        VStack {
            switch selectedTab {
            case .shop:
                ShopView()
            case .nightMarket:
                NightMarketView()
            case .setting:
                SettingsView()
            }
        }
        .cornerRadius(showSideBar ? 30 : 0)
        .offset(x: showSideBar ? 180 : 0)
        .scaleEffect(showSideBar ? 0.7 : 1.0)
        .rotation3DEffect(
            showSideBar ? .degrees(30) : .degrees(0),
            axis: (x: 0.0, y: -1.0, z: 0.0)
        )
        .onTapGesture {
            withAnimation(.spring(response: 0.3)) {
                showSideBar = false
            }
        }
    }
    
    var sideBarButton: some View {
        Button {
            withAnimation(.spring(response: 0.3)) {
                showSideBar.toggle()
            }
        } label: {
            Group {
                if showSideBar {
                    Image(systemName: "xmark")
                } else {
                    Image(systemName: "list.dash")
                }
            }
            .font(.title3)
            .fontWeight(.bold)
            .foregroundStyle(Color.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.vertical, 8)
        .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
