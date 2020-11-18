//
//  ContentView.swift
//  SWIFTUI-WeatherApp
//
//  Created by Alexey Kirpichnikov on 2020/11/13.
//  Copyright © 2020 Alexey Kirpichnikov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDark = false
    
    var body: some View {
        
        ZStack {
            
            BackgroundView(isDark: $isDark)
            
            VStack {
                
                CityTextView(cityName: "Cuppertino, CA")
                
                CurrentWeatherView(imageSystemName: isDark ? "moon.circle.fill" : "cloud.sun.fill", temperature: 76)
                
                .padding(.bottom, 40)
                
                HStack(spacing: 30) {
                    SingleWeatherDayView(dayOfWeek: "TUE",
                                   systemName: "cloud.sun.fill",
                                   temperatureInt: 22)
                    
                    SingleWeatherDayView(dayOfWeek: "WED",
                                   systemName: "sun.max.fill",
                                   temperatureInt: 20)
                    
                    SingleWeatherDayView(dayOfWeek: "THU",
                                   systemName: "sun.dust.fill",
                                   temperatureInt: 24)
                    
                    SingleWeatherDayView(dayOfWeek: "FRI",
                                   systemName: "sun.haze.fill",
                                   temperatureInt: 28)
                    
                    SingleWeatherDayView(dayOfWeek: "SAT",
                                   systemName: "cloud.sun.bolt.fill",
                                   temperatureInt: 17)
                }
                
                Spacer()
                
                Button {
                    isDark.toggle() /// toggle from 'false' to 'true' or 'true' to 'false'
                } label: {
                    WeatherButtonView(buttomMessage: "Change Day Time",
                                      backgroundColor: .white,
                                      textColor: .blue)
                }
                
                Spacer()
            }
        }
    }
}



/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/

