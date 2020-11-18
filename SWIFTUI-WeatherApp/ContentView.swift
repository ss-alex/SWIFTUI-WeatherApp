//
//  ContentView.swift
//  SWIFTUI-WeatherApp
//
//  Created by Alexey Kirpichnikov on 2020/11/13.
//  Copyright © 2020 Alexey Kirpichnikov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: Color("CustomDarkBlue"), bottomColor: Color("CustomLightBlue"))
            VStack {
                CityTextView(cityName: "Cuppertino, CA")
                CurrentWeatherView(imageSystemName: "cloud.sun.fill", temperature: 76)
                    
                //VStack(spacing: 10) {
                //    CurrentWeatherView(imageSystemName: "cloud.sun.fill", tempText: "76°")
                //}
                
                //Spacer()
                .padding(.bottom, 40)
                
                HStack(spacing: 30) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   systemName: "cloud.sun.fill",
                                   temperatureInt: 22)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   systemName: "sun.max.fill",
                                   temperatureInt: 20)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   systemName: "sun.dust.fill",
                                   temperatureInt: 24)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   systemName: "sun.haze.fill",
                                   temperatureInt: 28)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   systemName: "cloud.sun.bolt.fill",
                                   temperatureInt: 17)
                }
                
                Spacer()
                
                Button {
                    print("Tapped")
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

struct WeatherDayView: View {
    
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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text("\(cityName)")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

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

/*struct WeatherButtonView: View {
    
    var buttomMessage: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(buttomMessage)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 24, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}*/


