//
//  DismissButton.swift
//  AppleFrameworks
//
//  Created by Yevhenii Tereshchenko on 02.01.2024.
//

import SwiftUI

struct DismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
            }
            .padding()
        }
    }
}

#Preview {
    DismissButton(
        isShowingDetailView: .constant(false)
    )
}
