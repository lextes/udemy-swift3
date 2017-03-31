//
//  Constants.swift
//  rainyShiny
//
//  Created by Diseño on 23/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation

    let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
    let LATITUDE = "lat="
    let LONGITUDE = "&lon="
    let APP_ID = "&appid="
    let API_KEY = "091939d62fdd6c08b0bfc9436ff9b300"



    typealias DownloadComplete = () -> ()

    let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"


