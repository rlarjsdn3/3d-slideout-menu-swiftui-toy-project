//
//  FullScreen.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 2023/09/06.
//

import SwiftUI

extension View {
    func fullScreen(alignment: Alignment = .center) -> some View {
        modifier(FullScreen(alignment: alignment))
    }
}


struct FullScreen: ViewModifier {
    let alignment: Alignment
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
    }
}
