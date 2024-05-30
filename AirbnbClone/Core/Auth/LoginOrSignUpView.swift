//
//  LoginOrSignUpView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 30/05/2024.
//

import SwiftUI

let countries = ["United States", "Canada", "Mexico", "Germany", "France", "Italy"];

struct LoginOrSignUpView: View {
    @State private var phoneNumber = ""
    @State private var selectedCountry: String = countries[0]
    @Binding var dissis: Bool
    
    
    var body: some View {
        VStack {
            HStack{
                Button{
                    dissis.toggle()
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .padding(.leading)
                }
                HStack {
                    Spacer()
                    Text("Log in or Sign up")
                        .frame(height: 60)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                    Spacer()
                }
             
              
            }.padding(.horizontal)
            Divider()
            ScrollView{
                VStack{
                    
                    VStack (spacing: 0){
                        
                        HStack{
                         
                            Button{
                                
                            }label: {
                                VStack (alignment: .leading){
                                    Text("Contry/Region").font(.footnote).foregroundStyle(.gray)
                                   Text("Senegal (+221)").foregroundColor(.black)
                                }.padding()
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.black)
                                    .padding()
                            }
                            
                        }
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray, lineWidth: 1)
                        )
                        
                        TextField("Phone Number", text: $phoneNumber)
                            .padding(.horizontal)
                            .frame(height: 60)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray, lineWidth: 1 )
                            )
                    }
                    
                    .frame(height: 120)
            
                    
                    
                    Text("We'll call or text to confirm your number. Stantard message and data rates apply")
                        .padding(.vertical)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text("Continue")
                                .font(.title3)
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(height: 60)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    }.padding(.top)
                    
                    HStack {
                        VStack{
                            Divider()
                        }
                        Text("or")
                        VStack{
                            Divider()
                        }
                    }.padding(.vertical)
                    
                    
                    VStack (spacing: 20){
                        
    
                        Button {
                            
                        } label: {
                            LoginBtnView(title: "Continue with email", iconName: "envelope")
                        }
                        Button {
                            
                        } label: {
                            LoginBtnView(title: "Continue with Apple", iconName: "apple.logo")
                        }
                        
                        Button {
                            
                        } label: {
                            LoginBtnView(title: "Continue with Google", iconName: "google", isImage: true)
                        }
                        
                        Button {
                            
                        } label: {
                            LoginBtnView(title: "Continue with Facebook", iconName: "facebook", isImage: true)
                        }
                    }
                    
                    
                    
                }.padding()
            }
        }
    }
}

#Preview {
    LoginOrSignUpView(dissis: .constant(false))
}

struct LoginBtnView: View {
    var title : String
    var iconName: String
    var isImage = false;
    var body: some View {
        HStack {
            if (isImage) {
                Image(iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white).padding(.leading, 10)
            }else{
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black).padding(.leading, 10)
            }
            
            
            Spacer()
            Text(title)
                .font(.headline)
//                .fontWeight(.semibold)
                .padding(.trailing, 20)
                .foregroundColor(.black)
            Spacer()
            
        } .foregroundStyle(.white)
            .font(.subheadline)
            .frame(height: 54)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 1)
            )
    }
}
