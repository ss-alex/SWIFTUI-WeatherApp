//
//  CurrentWeatherView.swift
//  SWIFTUI-WeatherApp
//
//  Created by Лена Мырленко on 2020/11/18.
//  Copyright © 2020 Alexey Kirpichnikov. All rights reserved.
//

import SwiftUI

struct CurrentWeatherView: View {
    
    var imageSystemName: String
    var temperature: Int
    
    var body: some View {
        
        VStack(spacing: 10) {
            Image(systemName: imageSystemName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)

            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
