//
//  ContentView.swift
//  testApp
//
//  Created by Danila Karpov on 4.2.2022.
//

import SwiftUI

var emji = String(UnicodeScalar(Array(0x1F300...0x1F3F0).randomElement()!)!)

struct TestRow: View {
    var body: some View {
        Text("List item! \(String(UnicodeScalar(Array(0x1F300...0x1F3F0).randomElement()!)!))")
            .listRowBackground(Color(red: 0.36, green: 0.36, blue: 0.46)).blendMode(.luminosity)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    Text("Danila Karpov").bold().font(.system(size: 25)).colorInvert().offset(x: -60.0, y: -60.0).padding()
                    Text(emji).font(.system(size: 25)).offset(x: -90.0, y: -60.0).blendMode(.luminosity).padding()
                }
                Image("ava").resizable().frame(width:200, height: 200).clipShape(Circle()).blendMode(.luminosity)
                List {
                    TestRow()
                    TestRow()
                    TestRow()
                }.padding().foregroundColor(Color.white)
                    .background(Color(red: 0.16, green: 0.16, blue: 0.26).ignoresSafeArea())
                    .onAppear {
                        UITableView.appearance().backgroundColor = .clear
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .accentColor(Color.black)
                    .background(Color(red: 0.16, green: 0.16, blue: 0.26))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
