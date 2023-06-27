//
//  FormView.swift
//  SPOT
//
//  Created by Aaron Nguyen on 5/14/23.
//

import SwiftUI

struct FormView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var phoneNumber: String = ""
    @State var password: String = ""
    @State var confirmationPassword: String = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                TextField("Phone Number", text: $phoneNumber)
                SecureField("Password", text: $password)
                SecureField("Confirm Password", text: $confirmationPassword)
                Button("Press Me") {
                    print("Button pressed!")
                }.background(Color(red: 0, green: 0, blue: 0.5))
            }
        }
    }
}

struct FormViewPreview: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
