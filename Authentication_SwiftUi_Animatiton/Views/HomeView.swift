//
//  HomeView.swift
//  Authentication_SwiftUi_Animatiton
//
//  Created by Tássio Rocha on 09/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var action: () -> Void
    var body: some View {
        VStack() {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            TMButton(text: "logout", action: action);
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView() {
            
        }
    }
}
