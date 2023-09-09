//
//  SideBarView.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 7/23/23.
//

import SwiftUI

struct SideBarView: View {
    
    // MARK: - WRAPPER PROPERTIES
    
    @State private var selectedTabFA: SideTabButton = .shop // For Animation
    
    @Binding var selectedTab: SideTabButton
    
    @Namespace var namespace: Namespace.ID
    
    // MARK: - INITIALIZER
    
    init(_ selectedTab: Binding<SideTabButton>) {
        self._selectedTab = selectedTab
    }
    
    // MARK: - BODY
    
    var body: some View {
        sideBarView
            .fullScreen(alignment: .topLeading)
            .background {
                Color.red.opacity(0.9)
                    .ignoresSafeArea()
            }
            .overlay(alignment: .bottomLeading) {
                valorantLogoImage
            }
    }
}

// MARK: - EXTENSION

extension SideBarView {
    var sideBarView: some View {
        VStack(alignment: .leading, spacing: 10) {
            profileGroup
            
            sideTabButtonGroup
        }
    }
    
    var profileGroup: some View {
        VStack(alignment: .leading) {
            profileImage
            
            nickNameText
            
            showProfileButton
        }
        .padding(.top, 80)
    }
    
    var profileImage: some View {
        // 완성되지 않은 코드
        Image("김지지")
            .resizable()
            .scaledToFit()
            .frame(width: 80)
            .offset(y: 10)
            .clipShape(Circle())
            .padding()
            .padding(.vertical, -30)
    }
    
    var nickNameText: some View {
        // 완성되지 않은 코드
        Text("김지지")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.horizontal)
    }
    
    var showProfileButton: some View {
        Button {
            // do someting..
        } label: {
            Text("프로필 보기")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(Color.secondary)
                .padding(.horizontal)
        }
    }
    
    var valorantLogoImage: some View {
        Image("valorant")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 40)
            .offset(x: -75)
    }
    
    var sideTabButtonGroup: some View {
        VStack(alignment: .leading) {
            ForEach(SideTabButton.allCases) { tab in
                Button {
                    withAnimation(.spring(response: 0.2)) {
                        selectedTabFA = tab
                    }
                    selectedTab = tab
                } label: {
                    HStack {
                        Image(systemName: tab.systemImage)
                        Text(tab.name)
                    }
                    .font(.title2)
                    .foregroundStyle(Color.black)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background {
                    if selectedTabFA == tab {
                        RoundedRect()
                            .fill(.white)
                            .matchedGeometryEffect(id: "Tab", in: namespace)
                    }
                }
            }
        }
        .padding(.vertical, 30)
    }
}

// MARK: - PREVIEW

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView(.constant(SideTabButton.shop))
    }
}
