//
//  TextFieldView.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 17.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var name: String
    
    private var isNameValid: Bool {
        name.count >= 3
    }

    var body: some View {
        HStack {
            TextField("Enter your name", text: $name)
                .frame(width: 288, alignment: .leading)
                .multilineTextAlignment(.leading)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.default)
            
            Spacer()
            
            Text("\(name.count)")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(isNameValid ? .green : .red)
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(name: .constant(""))
    }
}
