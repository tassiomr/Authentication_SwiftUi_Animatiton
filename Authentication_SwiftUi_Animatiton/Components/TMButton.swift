//
//  Button.swift
//  Authentication_SwiftUi_Animatiton
//
//  Created by Tássio Rocha on 09/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct TMButton: View {
    var text: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(text).accentColor(Color.white)
        }.frame(width: UIScreen.main.bounds.width - 32, height: 45, alignment: .center)
            .background(Helper.shared.primary).cornerRadius(4)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        TMButton(text: "CLIQUEI") {
            print("CLIQUEI")
        }
    }
}
