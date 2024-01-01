//
//  ContactUsView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-25.
//

import SwiftUI

struct ContactMess: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .foregroundStyle(.black)
            .font(.title3.bold())
    }
}

struct Contacttitle: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .foregroundStyle(.black)
            .font(.caption.bold())
    }
}

struct FormDesign: View {
    @Binding var Bindingvalue : String
    var label : String
    var Fieldlabel : String
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Text(label)
                TextField(Fieldlabel, text: $Bindingvalue)
                    .padding(.all)
                    .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
                    .autocorrectionDisabled()
                    .onLongPressGesture(minimumDuration: 0.0) {}
            }
        }
    }
}

struct ContactUsView: View {
    var CourseOptions = ["QA Automation", "Business Analyst", "IOS Development", "Data Analyst"]
    @State private var CourseSelected = "QA Automation"
    @State private var Approxdate = Date.now
    @State private var FirstName :String = ""
    @State private var lastName :String =  ""
    @State private var email : String = ""
    @State private var PhoneNum = ""
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    Headline(Txt: "Contact US ")
                    Spacer(minLength: 35)
                    Text("Lets start your Journey, We are just a HELLO Away !")
                    Spacer(minLength: 35)
                    
                    Text("Fill out the form below or reach us on WhatsApp at +1 437 254 7868 or email us to info@itedge.ca")
                    Spacer(minLength: 35)
                    
                    //     ContactMess(Txt: "Select a Course")
                    
                    Picker("Select a Course", selection: $CourseSelected) {
                        ForEach( CourseOptions, id: \.self) {
                            Text($0)
                                .font(.subheadline.bold())
                                .tag(CourseOptions)
                            
                        }
                    }.pickerStyle(.navigationLink)
                    
                    Spacer(minLength: 35)
                    
                    DatePicker(selection: $Approxdate, in: Date.now..., displayedComponents: .date) {
                        Text("Select a date")
                    }
                    Spacer(minLength: 35)
                    
                    FormDesign(Bindingvalue: $FirstName, label: "First Name", Fieldlabel: "Fill In Your First name")
                    
                    
                    FormDesign(Bindingvalue: $lastName, label: "Last Name", Fieldlabel: "Fill In Your Last name")
                    
                    FormDesign(Bindingvalue: $email, label: "Email Address", Fieldlabel: "Fill In Your Email Address")
                    
                    Button {
                        print(FirstName)
                        print(lastName)
                        print(email)
                        print(Approxdate)
                        
                    }label: {
                        Text(("Submit"))
                    }
                    
                    FooterView()
                }
            }
            .background(.color1)
            .preferredColorScheme(.light)
            
            
        }
        .background(.color1)
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContactUsView()
}
