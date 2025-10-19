//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Yassine EL KEFI on 19/10/2025.
//

import SwiftUI
import Combine

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText :String{
        scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
