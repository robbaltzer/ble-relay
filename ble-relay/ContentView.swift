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
    @EnvironmentObject var relay: Relay

    var body: some View {
    
        Form {
            Section {
                HStack {
                    Text("Value:")
                    Text("\(self.relay.count)") // TODO: Put relayed value here
                }
            }
            
            Section {
                Button(action: {
                    self.relay.setToEleven()
                // TODO: Start sending packets, toggle button
                }) { Text("Start")}
            }
            
            Section {
                HStack {
                    Text("Status:")
                    Text("Connected")
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
