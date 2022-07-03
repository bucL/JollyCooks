//
//  NoItemsView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 2/7/2022.
//  NoItemsView is the view that is called in ListView in the if statement when there are no items in the list.

import SwiftUI



struct NoItemsView: View {
    
    @State var animate: Bool = false
    let orangecolor = Color("Orange")
    
    var body: some View {
        ScrollView {
            VStack{
                Text("You currently have no items.")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Hmm... maybe try clicking that mysterious looking create button!")
                    .padding(.bottom, 20)
                NavigationLink(destination: TodoCreateView(), label:{
                    Text("Create")
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background( animate ? orangecolor : Color.accentColor)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? orangecolor.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -5 : 0)
                
            }
            .frame(maxWidth: 600)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }//make sure animate is false, because if it is true then no need to call it twice
        DispatchQueue.main.asyncAfter(deadline: .now()+1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
    
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("Title")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
