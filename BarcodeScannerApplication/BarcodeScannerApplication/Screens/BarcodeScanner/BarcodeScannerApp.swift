//
//  ContentView.swift
//  BarcodeScannerApplication
//
//  Created by Yavuz Güner on 19.12.2022.
//

import SwiftUI

struct BarcodeScannerApp: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity , maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .imageScale(.large)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.title)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
                
            }.navigationTitle("Barcode Scanner")
                .alert(item:$viewModel.alertItem){alertItem in
                    Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerApp()
    }
}
