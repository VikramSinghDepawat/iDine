//
//  AvatarSize.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import Foundation

enum AvatarSize {
    case small
    case medium
    case large
    
    var dimension: CGFloat {
        switch self {
        case .small: 40
        case .medium: 48
        case .large: 64
        }
    }
}
