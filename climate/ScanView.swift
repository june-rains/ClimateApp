//
//  ContentView.swift
//  scanner
//
//  Created by 张傲华 on 6/17/22.
//

import SwiftUI
import CodeScanner

struct ScanView: View {
    @State var isPresentingScanner = false
    @State var isPresentingScannerResult = false
    @State var scannedCode: String = "Scan a QR code to get started."
    @ObservedObject var model = ViewModel()
    
    var scannerSheet : some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: { result in
                if case let .success(code) = result {
                    self.scannedCode = code.string
                    self.isPresentingScanner = false
                    self.isPresentingScannerResult = true
                    //ScanDetailView(_id: scannedCode)
                    model.data(_id: scannedCode)
                }
            }
        )
    }
    
    var resultSheet : some View {
        return ScanDetailView(_id: scannedCode)
    }
    
    var body: some View {
        VStack(spacing : 10) {
            Text("Scan a QR code to get started.")
            
            Button("Scan QR code") {
                self.isPresentingScanner = true
            }
            .sheet(isPresented: $isPresentingScanner) {
                self.scannerSheet
            }.sheet(isPresented: $isPresentingScannerResult) {
                self.resultSheet
            }
        }
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}

