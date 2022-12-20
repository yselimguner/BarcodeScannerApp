//
//  BarcodeScannerViewModel.swift
//  BarcodeScannerApplication
//
//  Created by Yavuz Güner on 19.12.2022.
//

import SwiftUI

final class BarcodeScannerViewModel:ObservableObject{
    
    @Published var scannedCode : String = ""
    @Published var alertItem: AlertItem?
    
    var statusText:String{
        scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor:Color{
        scannedCode.isEmpty ? .red : .green
    }
}
