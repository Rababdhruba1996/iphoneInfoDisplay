//
//  ContentView.swift
//  iPhone_Linux_Project
//
//  Created by UXD on 2022/09/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var textEditorText:String="This is the sample text."
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text:$textEditorText)
                Button(action: {
                    
                }, label: {
                    Text("Display".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal,10)
                        .background(
                            Capsule()
                                .fill(Color.green)
                        )
                })
            }
            .padding()
            .background(Color.gray)
            .navigationTitle("Welcome!")
            .frame(maxHeight:.infinity, alignment:.bottom)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
