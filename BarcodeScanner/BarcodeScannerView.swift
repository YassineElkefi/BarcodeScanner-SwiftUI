//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Yassine EL KEFI on 19/10/2025.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScannerView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not yet scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
