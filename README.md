# BarcodeScanner - SwiftUI

[![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)](https://swift.org)
[![iOS](https://img.shields.io/badge/iOS-17.0+-blue.svg)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A simple and elegant barcode scanner app built with SwiftUI, designed for learning purposes. This project demonstrates how to integrate UIKit components (AVFoundation) into SwiftUI applications to scan EAN-8 and EAN-13 barcodes using the device's camera.

## 📱 Features

- **Real-time Barcode Scanning**: Uses device camera to scan barcodes in real-time
- **Supported Formats**: EAN-8 and EAN-13 barcode types
- **SwiftUI Integration**: Seamlessly combines SwiftUI with UIKit components
- **Error Handling**: Comprehensive error handling for camera and scanning issues
- **Clean UI**: Modern and intuitive user interface
- **MVVM Architecture**: Well-structured codebase using Model-View-ViewModel pattern

## 🛠️ Technologies Used

- **SwiftUI**: For building the user interface
- **AVFoundation**: For camera access and barcode scanning
- **UIKit**: UIViewController integration via UIViewControllerRepresentable
- **Combine**: For reactive programming in ViewModel

## 🚀 Getting Started

### Prerequisites

- Xcode 15.0 or later
- iOS 17.0 or later
- A physical iOS device with camera (simulator won't work for camera features)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YassineElkefi/BarcodeScanner-SwiftUI.git
   cd BarcodeScanner-SwiftUI
   ```

2. **Open in Xcode**
   ```bash
   open BarcodeScanner.xcodeproj
   ```

3. **Build and Run**
   - Select your target device
   - Press `Cmd + R` to build and run

## 📖 Usage

1. Launch the app on your iOS device
2. Grant camera permissions when prompted
3. Point your camera at an EAN-8 or EAN-13 barcode
4. The scanned barcode value will appear below the scanner view
5. Green text indicates a successful scan, red text shows "Not yet scanned"

## 🏗️ Project Structure

```
BarcodeScanner/
├── BarcodeScannerApp.swift          # Main app entry point
├── Screens/
│   └── Barcode Scanner/
│       ├── BarcodeScannerView.swift     # Main view
│       └── BarcodeScannerViewModel.swift # ViewModel for state management
├── Views/
│   └── UIKit Components/
│       ├── ScannerView.swift            # SwiftUI wrapper for UIKit
│       └── ScannerViewController.swift  # UIKit camera controller
└── Utilities/
    └── Alert.swift                      # Alert configurations
```

## 🔧 Key Components

### ScannerViewController
- Manages camera session and barcode detection
- Implements `AVCaptureMetadataOutputObjectsDelegate`
- Handles camera permissions and setup

### ScannerView
- `UIViewControllerRepresentable` wrapper
- Bridges UIKit and SwiftUI
- Manages coordinator for delegate pattern

### BarcodeScannerViewModel
- Observable object for state management
- Publishes scanned code and alert states
- Computed properties for UI updates

## 📋 Requirements

- iOS 17.0+
- Swift 5.9+
- Xcode 15.0+

## 👨‍💻 Author

**Yassine EL KEFI**
- GitHub: [@YassineElkefi](https://github.com/YassineElkefi)
- LinkedIn: [Yassine EL KEFI](https://www.linkedin.com/in/yassine-elkefi/)
- Portfolio: [Yassine EL KEFI Portfolio](http://yassineelkefidev-portfolio.vercel.app)
- Email: [yassine.elkefi.dev@gmail.com](mailto:yassine.elkefi6@gmail.com)

---

*Built with ❤️ for learning SwiftUI and iOS development*