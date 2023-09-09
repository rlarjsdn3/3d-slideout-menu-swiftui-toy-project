//
//  RoundedRect.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 7/23/23.
//

import UIKit
import SwiftUI

struct RoundedRect: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topRight, .bottomRight], cornerRadii: CGSize(width: 6, height: 6))
        return Path(path.cgPath)
    }
}
