//
//  ContentView.swift
//  iPhone_Linux_Project
//
//  Created by UXD on 2022/09/09.
//

import SwiftUI
import GBDeviceInfo
import FirebaseDatabase

struct ContentView: View {
    
    var info = GBDeviceInfo()
    private let database = Database.database().reference()
    
    @State var textEditorText:String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle
                        .weight(.heavy))
                TextEditor(text:$textEditorText)
                Button(action: {
                    let mInfo = UIDevice()
                    if let modelInfo = info.modelString {
                        textEditorText = "Model: " + modelInfo + "\n"
                        textEditorText = textEditorText + "DisplayInfo: " + "\(info.displayInfo.pixelsPerInch) ppx\n" + "Major Os Version: \(info.osVersion.major)\n" + "Minor Os Version: \(info.osVersion.minor)\n" + "Total Storage Capacity:  \(mInfo.totalDiskSpaceInGB)\n" + "Free Space: \(mInfo.freeDiskSpaceInGB)\n"
                    }
                    let object: [String:Any] =
                    ["info":textEditorText as! NSObject]
                    database.child("deviceInfo").setValue(object)
                    
                }, label: {
                    Text("Display".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal,10)
                        .background(
                            Capsule()
                                .fill(Color.black)
                        )
                })
            }
            .padding()
            .background(Color.gray)
            .frame(maxHeight:.infinity, alignment:.bottom)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
