//
//  NightMarketView.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 7/23/23.
//

import SwiftUI

struct NightMarketView: View {
    var body: some View {
        Text("NightMarket View")
            .font(.title.weight(.bold))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
    }
}

struct NightMargketView_Previews: PreviewProvider {
    static var previews: some View {
        NightMarketView()
    }
}
