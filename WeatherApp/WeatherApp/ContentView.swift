//
//  ContentView.swift
//  WeatherApp
//
//  Created by Joanie O'Donnell on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: .white)
            
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 25){
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "cloud.sun.fill",
                        temperature: 74)
                    
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "sun.max.fill",
                        temperature: 88)
                    
                    WeatherDayView(
                        dayOfWeek: "THUR",
                        imageName: "wind.snow",
                        temperature: 55)
                    
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "sunset.fill",
                        temperature: 60)
                    
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName: "snow",
                        temperature: 74)
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    WeatherButton(title: "Change Day Time", backgroundColor: .white)
                    
                }
               Spacer()
            
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        
      
        
        VStack{
            Text("\(dayOfWeek)")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium ))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
     
        
        LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    var cityName: String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
        
    }
}

struct MainWeatherStatusView: View{
    
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing: 10)
        {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium ))
                .foregroundColor(.white)
        }
        
        .padding(.bottom, 60)
        
    }
}

struct WeatherButton: View{
    var title: String
    var backgroundColor: Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height:50)
            .background(backgroundColor)
                .font(.system(size:20, weight:.bold, design:.default))
            .cornerRadius(10)
    }
    }

