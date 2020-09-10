//
//  Input.swift
//  Authentication_SwiftUi_Animatiton
//
//  Created by Tássio Rocha on 09/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct TMInput: View {
    @Binding var value: String
    var placeholder: String
    var security: Bool?
    
    var body: some View {
        TextField(placeholder, text: $value)
        .padding(4)
            .frame(width: UIScreen.main.bounds.width - 32, height: 45, alignment: .center)
            .background(Helper.shared.textInputColor)
        .cornerRadius(4)
    }
}

struct Input_Previews:

PreviewProvider {
    @State static var name = ""
    @State static var password = ""
    
    static var previews: some View {
        Form{
            TMInput(value: $name, placeholder: "Username")
            TMInput(value: $password, placeholder: "Password")
        }
    }
}
