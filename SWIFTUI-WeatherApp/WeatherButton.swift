//
//  WeatherButton.swift
//  SWIFTUI-WeatherApp
//
//  Created by Лена Мырленко on 2020/11/18.
//  Copyright © 2020 Alexey Kirpichnikov. All rights reserved.
//

import SwiftUI

struct WeatherButtonView: View {
    
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
}



