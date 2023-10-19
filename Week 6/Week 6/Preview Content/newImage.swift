//
//  newImage.swift
//  Week 6
//
//  Created by Kennon Cummings on 10/18/23.
//

import SwiftUI

struct newImage: View {
    @State var systemName:String = ""
    @State var audioName:String = ""
    @State var astName:String = ""
    
    var body: some View {
        VStack{
            Image(astName)
                .resizable()
            
            HStack{
                Button("Add"){
                    print("New Audio Add")
                }
                
                Spacer()
                
                Button("Cancel") {
                    print("New Audio Cancel")
                 //   dismiss()
                }
            }.padding(15)
            
            Form {
                TextField("Audio", text: $audioName)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                TextField("Name", text: $astName)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                TextField("Icon", text: $systemName)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
        }
    }
}

#Preview {
    newImage()
        .background(Color.pink)
    
}
