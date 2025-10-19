//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Yassine EL KEFI on 19/10/2025.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ScannerViewController {
        ScannerViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, ScannerViewControllerDelegate{
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
    
}

#Preview {
    ScannerView()
}
