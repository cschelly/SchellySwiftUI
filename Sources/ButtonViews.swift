//
//  ButtonViews.swift
//
//  Created by Christina Schell on 4/2/21.
//  Copyright © 2021 Schelly Apps. All rights reserved.

import SwiftUI

public struct SchellyButton: View {
    var view: AnyView
    var action: () -> Void
    
    public init(view: AnyView,
         _ action: @escaping () -> Void) {
        self.view = view
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) { view }
    }
}

public struct SchellyTextButton: View {
    var title: String
    var action: () -> Void
    
    public init(title: String,
                _ action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    var buttonView: some View {
        Text(title)
           .frame(width: 200.0)
           .padding()
           .background(Color.tealBlue)
           .foregroundColor(.white)
           .cornerRadius(10)
           .shadow(radius: 8)
    }
    
    public var body: some View {
        SchellyButton(view: AnyView(buttonView)) {
            action()
        }
    }
}

public struct SchellyIconButton: View {
    var iconName: String
    var color: Color
    var action: () -> Void
    
    public init(iconName: String,
                color: Color = .tealBlue,
                _ action: @escaping () -> Void) {
        self.iconName = iconName
        self.color = color
        self.action = action
    }
    
    var buttonView: some View {
        Image(systemName: iconName)
    }
    
    public var body: some View {
        SchellyButton(view: AnyView(buttonView)) {
            action()
        }
        .accentColor(color)
        .font(.title)
    }
}

