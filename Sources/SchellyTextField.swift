//
//  SchellyTextField.swift
//
//  Created by Christina Schell on 4/2/21.
//  Copyright © 2021 Schelly Apps. All rights reserved.

import SwiftUI

public struct SchellyTextField: View {
    @Binding var value: String
    var isSecure: Bool
    var imageName: String?
    var placeholder: String?
    var color: Color?
    
    public init(_ value: Binding<String>,
        secure: Bool = false,
        imageName: String? = nil,
        placeholder: String? = nil,
        color: Color? = nil) {
        self._value = value
        self.isSecure = secure
        self.imageName = imageName
        self.placeholder = placeholder
        self.color = color
    }
    
    public var body: some View {
        HStack {
            if let imageName = imageName {
                Image(systemName: imageName)
                  .foregroundColor(color)
            }
            if isSecure {
                SecureField(placeholder ?? "", text: $value)
            } else {
                TextField(placeholder ?? "", text: $value)
                  .foregroundColor(color)
                  .accentColor(color)
            }
          }
        .frame(width: 200.0)
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(color ?? .gray, lineWidth: 1))
    }
}
