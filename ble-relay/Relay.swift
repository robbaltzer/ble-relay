//
//  Relay.swift
//  ble-relay
//
//  Created by Robert Baltzer on 10/1/19.
//  Copyright © 2019 Robert Baltzer. All rights reserved.
//

import Combine
import Foundation
import SwiftUI

class Relay: ObservableObject {
    @Published var count = 0
    
    func setToEleven() {
        count = 11
    }
}
