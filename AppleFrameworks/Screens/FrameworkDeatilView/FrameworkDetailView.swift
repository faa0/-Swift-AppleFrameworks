//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Yevhenii Tereshchenko on 02.01.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(
                framework: framework
            )
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AppleFrameworkButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework
    ).preferredColorScheme(.dark)
}
