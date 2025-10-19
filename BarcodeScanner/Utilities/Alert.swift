//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Yassine EL KEFI on 19/10/2025.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera. we are unable to capture the input.", dismissButton: .default(Text("Okay")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "The value scanned is not valid. This app scans only EAN-8 and EAN-13.", dismissButton: .default(Text("Okay")))
}
