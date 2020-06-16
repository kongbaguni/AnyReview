//
//  LoginView.swift
//  AnyReview
//
//  Created by Changyul Seo on 2020/06/16.
//  Copyright © 2020 Changyul Seo. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    let signInWithApple = SigninWithApple()
    var body: some View {
        VStack {
            Image("review")
                .frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.strockColor,lineWidth: 10))
                .shadow(color: .shadowColor, radius: 10, x: 0, y: 0)
                .padding(20)
            Text("AnyReview".localized)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            ButtonView(image: Image("google"), title: "Sign in with GoogleID".localized) {
                
            }
            ButtonView(image: Image("apple"), title: "Sign in with Apple".localized) {
                self.signInWithApple.startSignInWithAppleFlow()
            }
                        
            Image("narui").resizable().scaledToFit().frame(width: 100, height: 50, alignment: .center)

        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
