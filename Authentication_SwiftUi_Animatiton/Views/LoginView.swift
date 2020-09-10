//
//  LoginView.swift
//  Authentication_SwiftUi_Animatiton
//
//  Created by Tássio Rocha on 09/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var name = ""
    @State var password = ""
    var action: () -> Void
    
    var body: some View {
        VStack() {
            TMInput(value: $name, placeholder: "Username", security: false)
            TMInput(value: $password, placeholder: "Password", security: false)
            TMButton(text: "logout", action: action)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView {
            print("Printei")
        }
    }
}
