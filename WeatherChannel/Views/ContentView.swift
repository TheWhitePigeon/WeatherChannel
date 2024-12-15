//
//  ContentView.swift
//  WeatherChannel
//
//  Created by Zhanet Nikolovska on 22.10.24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                
                if let weather = weather{
                    WeatherView(weather: weather)
                }
                else{
                    LoadingView()
                        .task{
                            do{
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                                
                            }
                            catch{
                                
                                print("Error getting weather: \(error)")
                                
                            }
                        }
                }

                
            }
            else {
                    if locationManager.isLoading{
                        LoadingView()
                    }
                    else{
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
           
        }
        .background(Color(hue: 0.627, saturation: 0.982, brightness: 0.544))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
