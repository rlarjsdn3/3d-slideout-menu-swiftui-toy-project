//
//  ShopView.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 7/23/23.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        Text("Shop View")
            .font(.title.weight(.bold))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
