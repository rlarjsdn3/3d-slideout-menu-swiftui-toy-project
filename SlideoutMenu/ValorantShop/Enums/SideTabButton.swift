//
//  SideTabButton.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 7/23/23.
//

import Foundation

enum SideTabButton: CaseIterable, Identifiable {
    case shop // 상점 버튼
    case nightMarket // 야시장 버튼
    case setting // 설정 버튼
    
    var name: String {
        switch self {
        case .shop:
            return "상점"
        case .nightMarket:
            return "야시장"
        case .setting:
            return "설정"
        }
    }
    
    var systemImage: String {
        switch self {
        case .shop:
            return "cart.fill"
        case .nightMarket:
            return "moon.fill"
        case .setting:
            return "gear.circle.fill"
        }
    }
    
    var id: String { self.name }
}
