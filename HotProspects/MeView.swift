//
//  MeView.swift
//  HotProspects
//
//  Created by APPLE on 09/09/24.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct MeView: View {
    @AppStorage("name") private var name = "Aditya Choubisa"
    @AppStorage("emailAddress") private var emailAddress = "adityachoubisa02@gmail.com"
    @State private var qrCode = UIImage()
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    var body: some View {
        Form{
            TextField("Enter name",text:$name)
                .textContentType(.name)
                .font(.title)
                
            TextField("Enter email",text: $emailAddress)
                .textContentType(.emailAddress)
                .font(.title2)
            
            Image(uiImage: qrCode)
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .contextMenu {
//                        let image = generateQRCode(from: "\(name)\n\(emailAddress)")

                        ShareLink(item: Image(uiImage: qrCode), preview: SharePreview("My QR Code", image: Image(uiImage: qrCode)))
                    }
        }
        .navigationTitle("Your Code")
        .onAppear(perform: updateCode)
        .onChange(of: name, updateCode)
        .onChange(of: emailAddress, updateCode)
    }
    func updateCode() {
        qrCode = generateQRCode(from: "\(name)\n\(emailAddress)")
    }
    func generateQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)

        if let outputImage = filter.outputImage {
            if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
//               qrCode =  UIImage(cgImage: cgImage)
                return UIImage(cgImage: cgImage)
                
            }
        }

        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
}

#Preview {
    MeView()
}
