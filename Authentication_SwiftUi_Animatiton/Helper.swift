//
//  Helper.swift
//  Authentication_SwiftUi_Animatiton
//
//  Created by Tássio Rocha on 09/09/20.
//  Copyright © 2020 Tássio Rocha. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class Helper {
    
    static var shared: Helper {
        let instance = Helper()
        return instance;
    }
    
    /// MARK: APPLICATION SIZES
    var width: CGFloat {
        return UIScreen.main.bounds.width;
    };
    
    var height: CGFloat {
        return UIScreen.main.bounds.height - 60;
    };
    
    var screenCornerRadius: CGFloat = 20.0
    
    
    /// MARK: APPLICATION COLORS
    var primary: Color = Color(red: 170/255, green: 74/255, blue: 48/255, opacity: 1.0);
    var textInputColor: Color = Color(red: 237/255, green: 207/255, blue: 169/255, opacity: 1.0);
    var backgroundColor = Color(red: 255/255, green: 223/255, blue: 218/255, opacity: 1.0);
    
    /// MARK: ANIMATION DURATION
    var animationOpacity: Double = 0.750
    var animationTransition: Double = 0.850
    
    private init() { }
    
}
