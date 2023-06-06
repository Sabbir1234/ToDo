//
//  ContentView.swift
//  TodoApp
//
//  Created by Sabbir Hossain on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.teal,.blue,.accentColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("To-Do App").fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.top, 30)
                    Spacer()
                    NavigationLink(destination: ToDoListView()) {
                        Text("Get Started")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(20)
                            .foregroundColor(.white)
                            .frame(maxWidth: 300)
                    }
                    .background(.teal)
                    .cornerRadius(12)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
