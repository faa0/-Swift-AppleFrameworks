//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Yevhenii Tereshchenko on 02.01.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]    
}
