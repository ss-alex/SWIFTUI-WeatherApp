//
//  WeatherDayView.swift
//  SWIFTUI-WeatherApp
//
//  Created by Лена Мырленко on 2020/11/18.
//  Copyright © 2020 Alexey Kirpichnikov. All rights reserved.
//

import SwiftUI

struct SingleWeatherDayView: View {
    
    var dayOfWeek: String
    var systemName: String
    var temperatureInt: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: systemName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperatureInt)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
