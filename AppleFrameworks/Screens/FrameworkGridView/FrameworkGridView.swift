//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Yevhenii Tereshchenko on 02.01.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    ForEach(
                        MockData.frameworks
                    ) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(
                                framework: framework
                            )
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
