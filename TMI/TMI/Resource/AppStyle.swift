//
//  AppStyle.swift
//  TMI
//
//  Created by CHOMINJI on 2020/01/08.
//  Copyright © 2020 cmindy. All rights reserved.
//

import UIKit

enum App {
    enum Color {
        static let neonMagenta = #colorLiteral(red: 1, green: 0.2235294118, blue: 0.8274509804, alpha: 1)
        static let neonGreen = #colorLiteral(red: 0.1450980392, green: 1, blue: 0.02352941176, alpha: 1)
        static let neonCyan = #colorLiteral(red: 0.01176470588, green: 0.9529411765, blue: 0.9764705882, alpha: 1)
        static let neonBlue = #colorLiteral(red: 0, green: 0.8666666667, blue: 1, alpha: 1)
        
        static let gray300 = #colorLiteral(red: 0.8273689151, green: 0.8275085092, blue: 0.8273505569, alpha: 1)
        static let gray400 = #colorLiteral(red: 0.6823529412, green: 0.6823529412, blue: 0.6823529412, alpha: 1)
        static let gray500 = #colorLiteral(red: 0.5529411765, green: 0.5529411765, blue: 0.5529411765, alpha: 1)
        
        static let navigationBlack = UIColor.black.withAlphaComponent(0.5)
        static let borderBlack = UIColor.black.withAlphaComponent(0.1)
        static let black = UIColor.black
        static let white = UIColor.white
        static let clear = UIColor.clear
    }
    
    enum Icon {
        static let back = #imageLiteral(resourceName:"iconsArrowBack")
        static let backWhite = #imageLiteral(resourceName: "iconsArrowBackW")
        static let cancel = #imageLiteral(resourceName:"iconsCancel")
        static let delete = #imageLiteral(resourceName: "iconsDeleteSmall")
        static let deleteWhite = #imageLiteral(resourceName: "iconsDeleteSmallW")
        static let heartFilled = #imageLiteral(resourceName: "iconsHeartFilled")
        static let heartOutlined = #imageLiteral(resourceName: "iconsHeartOutlined")
        static let plus = #imageLiteral(resourceName: "iconsPlus")
        static let reset = #imageLiteral(resourceName: "iconsReset")
        static let search = #imageLiteral(resourceName: "iconsSearch")
        static let selectFilled = #imageLiteral(resourceName: "iconsSelectFilled")
        static let selectOutlined = #imageLiteral(resourceName: "iconsSelectOutlined")
        static let share = #imageLiteral(resourceName: "iconsShareSmall")
        static let shareWhite = #imageLiteral(resourceName: "iconsShareSmallW")
    }
    
    enum Image {
        static let album = #imageLiteral(resourceName: "imgAlbum")
        static let error = #imageLiteral(resourceName: "imgError")
        static let folder = #imageLiteral(resourceName: "imgFolder")
        static let logoBar = #imageLiteral(resourceName: "imgLogoBar32Px")
        static let logoMain = #imageLiteral(resourceName: "imgLogoMain92Px")
        static let logoSplash = #imageLiteral(resourceName: "imgLogoSplash255Px")
    }
}
