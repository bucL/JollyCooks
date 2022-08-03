//
//  JollycooksInfo.swift
//  JollyCooks
//
//  Created by Phillip Shen on 3/8/2022.
//

import SwiftUI

struct JollycooksInfo: View {
    
    
    var body: some View {
        VStack {
            Image("Logo-1")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(15)
                .padding()
            Text("About JollyCooks")
                .font(.largeTitle)
            Text("Our Mission")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding()
                .cornerRadius(10)
                .padding()
            Text("Ever been too lazy to eat oustide? Or maybe your just sick of eating the same food over and over again. We at JollyCooks aim to bring the fun out of home cooking, no longer will you have to eat burnt crisps for dinner or spend hours in the kitchen pondering what to cook, just download our app and you will have access to millions of unique recipes from around the world with videos by professional and home cooks to guide you. With JollyCooks you can cook anything, anywhere.")
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding()
//                .background(Color.white.opacity(0.8))
                .background(Color("LightDarkColor"))
                .cornerRadius(10)
                .padding()
            Text("Meet JollyCooks")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding()
                .cornerRadius(10)
                .padding()
            Text("There is only so much you can cook with a physical cookbook. So we decided to make JollyCooks digital and free on the app store for all you home and professional chefs to enjoy. Our app is created using Swift and is avaliable on IOS iPhone and iPad, allowing you to easily prop up your device while cooking without taking up much space. Users have acess to hundreds of online recipes that are updated and added daily by people around the world, these recipes do not use up any storage as long as they are not downloaded as they will be stored on our servers. You can even contribute by cooking and filming your own special meals for others to enjoy! You can easily browse our recipes by searching for them or flicking through the numerous categories we've made. But why use JollyCooks when you already have other cooking websites and apps? Well we provide extra features that make your cooking life so much more easier such as an embedded shopping list and planner that allows you to plan what meals and ingredients to cook and buy. And for those that find it hard to understand instructions without visual representations, each and every one of the recipes on our app will be accompanied by videos and pictures made by professional cooks.")
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding()
//                .background(Color.white.opacity(0.8))
                .background(Color("LightDarkColor"))
                .cornerRadius(10)
                .padding()

            
            Spacer()
        }
    }
}

struct JollycooksInfo_Previews: PreviewProvider {
    static var previews: some View {
        JollycooksInfo()
        
        JollycooksInfo()
            .preferredColorScheme(.dark)
    }
}
