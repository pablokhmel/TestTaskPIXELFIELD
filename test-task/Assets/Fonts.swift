//
//  Fonts.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

enum FontWeight {
    case regular
    case medium
    case semibold
}

extension Font {
    static func ebGaramound(size: CGFloat, weight: FontWeight) -> Font {
        switch weight {
        case .medium:
            Font.custom("EBGaramond-Medium", size: size)

        case .semibold:
            Font.custom("EBGaramond-SemiBold", size: size)

        default:
            Font.system(size: size)
        }
    }

    static func lato(size: CGFloat, weight: FontWeight) -> Font {
        switch weight {
        case .regular:
            Font.custom("Lato-Regular", size: size)

        default:
            Font.system(size: size)
        }
    }
}
