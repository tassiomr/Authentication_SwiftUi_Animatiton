//
//  ContentView.swift
//  Authentication_SwiftUi_Animatiton
//
//  Created by Tássio Rocha on 09/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isAuth: Bool = false;
    @State var loginOpacity: Double = 1.0
    @State var homeOpacity: Double = 1.0
    let width = Helper.shared.width
    let height = Helper.shared.height
    
    var body: some View {
        
        return VStack () {
            Text(isAuth ? "Authenticated" : "Need Auth")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .foregroundColor(Helper.shared.primary)
            Spacer()
            if isAuth {
                HomeView {
                    self.isAuth.toggle()
                    withAnimation(.linear(duration: Helper.shared.animationOpacity)) {
                        self.homeOpacity = 0
                        self.loginOpacity = 1.0
                    }
                }
                .frame(width: width, height: height, alignment: .center)
                .background(Helper.shared.backgroundColor)
                .cornerRadius(Helper.shared.screenCornerRadius)
                .opacity(homeOpacity)
                .animation(.linear(duration: Helper.shared.animationTransition))
                .transition(.move(edge: .bottom))
            } else {
                LoginView {
                    self.isAuth.toggle()
                    withAnimation(.linear(duration: Helper.shared.animationOpacity)) {
                        self.loginOpacity = 0
                        self.homeOpacity = 1.0
                    }
                }
                .frame(width: width, height: height, alignment: .center)
                .background(Helper.shared.backgroundColor)
                .cornerRadius(Helper.shared.screenCornerRadius)
                .opacity(loginOpacity)
                .animation(.linear(duration: Helper.shared.animationTransition))
                .transition(.move(edge: .bottom))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
