//
//  Alert.swift
//  BarcodeScannerApplication
//
//  Created by Yavuz Güner on 19.12.2022.
//

import SwiftUI

struct AlertItem:Identifiable{
    var id = UUID()
    let title:String
    let message:String
    let dismissButton:Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera. We are unable to capture the input.", dismissButton: .default(Text("OK")))
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "The value scanned is not valid.This app scans EAN-8, EAN-13 and QR.", dismissButton: .default(Text("OK")))
}
