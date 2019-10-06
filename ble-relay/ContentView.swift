//
//  ContentView.swift
//  ble-relay
//
//  Created by Robert Baltzer on 10/1/19.
//  Copyright © 2019 Robert Baltzer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        NavigationView {
            FormView()
        }
    }
}

struct FormView : View {
    @EnvironmentObject var centralRelay: CentralRelay
    @State private var isPeripheralMode = true
    
    var body: some View {
    
        Form {
            Section {
                HStack {
                    Text("Value:")
                    Text("\(self.centralRelay.count)") // TODO: Put relayed value here
                }
            }
            
            Section {
                Button(action: {
                    self.centralRelay.setToEleven()
                    
                // TODO: Start sending packets, fire up the correct manager based on toggle button
                }) { Text("Start")}
            }
            
            Section {
                HStack {
                    Text("Status:")
                    Text("Connected")
                }
            }
            
            Section {
                Toggle(isOn: $isPeripheralMode) {
                    Text("Select peripheral mode")
                }
            }
            
            Section {
                NavigationLink(destination: Log()) {
                    // TODO: put log of BLE events here
                    Text("View log")

                }
            }
        }.navigationBarTitle(Text("BLE Relay"))
    }
}

struct Log : View {
    var body: some View {
        Text("LOG HERE TBD")
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
