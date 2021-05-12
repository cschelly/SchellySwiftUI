//
//  SchellyInvalidView.swift
//
//  Created by Christina Schell on 4/2/21.
//  Copyright © 2021 Schelly Apps. All rights reserved.

import SwiftUI

public struct SchellyInvalidView: View {
    @Binding var isInvalid: Bool
    var message: String
    
    public init(invalid: Binding<Bool>, message: String) {
        self._isInvalid = invalid
        self.message = message
    }
    
    public var body: some View {
        if isInvalid {
            Text(message).foregroundColor(.red)
        }
    }
}
