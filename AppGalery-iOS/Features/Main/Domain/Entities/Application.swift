//
//  Application.swift
//  AppGalery-iOS
//
//  Created by FauziArda on 12/02/23.
//

import Foundation
import UIKit

class Application{
    let id: String = UUID().uuidString
    var appName: String?
    var appLogo: String?
    
    init(appName: String? = nil, appLogo: String? = "no url") {
        self.appName = appName ?? "App\(id)"
        self.appLogo = appLogo
    }
}
