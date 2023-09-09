//
//  SettingsView.swift
//  3DSlideOutMenuProject
//
//  Created by 김건우 on 7/23/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Settings View")
            .font(.title.weight(.bold))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
    }
}

struct SettingsView_Preivews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
