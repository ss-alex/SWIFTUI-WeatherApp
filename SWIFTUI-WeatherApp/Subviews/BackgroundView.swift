//
//  BackgroundView.swift
//  SWIFTUI-WeatherApp
//
//  Created by Лена Мырленко on 2020/11/18.
//  Copyright © 2020 Alexey Kirpichnikov. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isDark: Bool
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isDark ? .black : Color("CustomDarkBlue"),
                                                   isDark ? .gray : Color("CustomLightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            
            .edgesIgnoringSafeArea(.all)
    }
}
