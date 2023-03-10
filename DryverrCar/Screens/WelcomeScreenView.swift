//
//  WelcomeScreenView.swift
//  DryverrCar
//
//  Created by Daval Cato on 3/8/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image(uiImage: #imageLiteral(resourceName: "onboard"))
                    Spacer()
                    NavigationLink(destination: SignInScreenView()) {
                    PrimaryButton(title: "Get Started")
                    }
                    
                    NavigationLink(
                        destination: SignInScreenView().navigationBarHidden(true),
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("PrimaryColor"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                                Spacer()
                            }
                            .navigationBarTitle("Welcome Screen", displayMode: .inline)
                            .navigationBarBackButtonHidden(false)
                        }
                    
                    HStack {
                        Text("New around here? ")
                        Text("Sign in")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
            }
        }
   

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
