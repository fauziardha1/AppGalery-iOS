//
//  AppsMockData.swift
//  AppGalery-iOS
//
//  Created by FauziArda on 12/02/23.
//

import Foundation

struct AppsMock{
    static let data = [
        Application(appName: "MovieApp", appLogo: "film.fill"),
        Application(appName: "MovieApp Viper", appLogo: "film.fill"),
        Application(appName: "MovieApp Alfa", appLogo: "film.fill"),
    ]
    
    enum MockError: Error{
        case appNotFound
    }
}
