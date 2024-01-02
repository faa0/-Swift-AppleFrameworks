//
//  AppleFrameworkButton.swift
//  AppleFrameworks
//
//  Created by Yevhenii Tereshchenko on 02.01.2024.
//

import SwiftUI

struct AppleFrameworkButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 192, height: 48)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(8.0)
    }
}

#Preview {
    AppleFrameworkButton(title: "Test Title")
}
