# 🌤️ Weather Channel

> Real-time weather at your location — beautifully simple.

![Weather Channel Poster](poster.png)

---

## 📱 About

**Weather Channel** is a SwiftUI iOS app that shows real-time weather data based on your current location. It uses the OpenWeather API to fetch live conditions including temperature, wind, humidity, and visibility.

---

## 🛠️ Tech Stack

- **SwiftUI** — iOS native UI framework
- **CoreLocation** — automatic location detection
- **OpenWeather API** — real-time weather data
- **Xcode** — development environment

---

## ✨ Features

- 📍 Auto-detects your current location
- 🌡️ Shows live temperature and feels-like temperature
- 💨 Wind speed, direction, and gusts
- 💧 Humidity percentage
- 👁️ Visibility distance
- ⛅ Weather condition with icon
- 🌅 Sunrise and sunset times

---

## 📁 Project Structure

```
WeatherChannel/
├── Views/
│   ├── ContentView.swift
│   ├── WeatherView.swift
│   ├── WelcomeView.swift
│   └── LoadingView.swift
├── Managers/
│   ├── WeatherManager.swift
│   └── LocationManager.swift
├── Extensions.swift
└── WeatherChannelApp.swift
```

---

## 🚀 Getting Started

### Prerequisites
- Xcode 14+
- iOS 16+
- OpenWeather API Key (free at [openweathermap.org](https://openweathermap.org))

### Setup
1. Clone the repository
```bash
git clone https://github.com/TheWhitePigeon/WeatherChannel.git
```
2. Open `WeatherChannel.xcodeproj` in Xcode
3. Add your OpenWeather API key in `WeatherManager.swift`
4. Build and run on simulator or device

---

## 👩‍💻 Author

Built by Zhanet Nikolovska
