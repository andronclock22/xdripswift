//
//  alertUrgencyType.swift
//  xdrip
//
//  Created by Paul Plant on 8/5/24.
//  Copyright © 2024 Johan Degraeve. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

/// define urgency levels so that we can pass this to notifications to display them in a relevant style...
public enum AlertUrgencyType: Int {
    case urgent = 0
    case warning = 1
    case normal = 2
    
    public init?(rawValue: Int) {
        switch rawValue {
        case 0:
            self = .urgent
        case 1:
            self = .warning
        default:
            self = .normal
        }
    }
    
    public var rawValue: Int {
        switch self {
        case .urgent:
            return 0
        case .warning:
            return 1
        case .normal:
            return 2
        }
    }
    
    var description: String {
        switch self {
        case .urgent:
            return "Urgent"
        case .warning:
            return "Warning"
        case .normal:
            return "Normal"
        }
    }
    
    var alertTitleType: String {
        switch self {
        case .urgent:
            return Texts_Alerts.alertTypeUrgent
        case .warning:
            return Texts_Alerts.alertTypeWarning
        default:
            return ""
        }
    }
 
    // UIKit colors
    var bannerTextUIColor: UIColor {
        switch self {
        case .urgent:
            return UIColor.white.withAlphaComponent(0.85)
        case .warning:
            return UIColor.black
        default:
            return UIColor.white.withAlphaComponent(0.85)
        }
    }
    
    var bannerBackgroundUIColor: UIColor {
        switch self {
        case .urgent:
            return UIColor.red
        case .warning:
            return UIColor.yellow
        default:
            return ConstantsAlerts.notificationBannerBackgroundUIColor
        }
    }
    
    // SwiftUI colors
    var bannerTextColor: Color {
        switch self {
        case .urgent:
            return .white.opacity(0.85)
        case .warning:
            return .black
        default:
            return .white.opacity(0.85)
        }
    }
    
    var bannerBackgroundColor: Color {
        switch self {
        case .urgent:
            return .red
        case .warning:
            return .yellow
        default:
            return ConstantsAlerts.notificationBannerBackgroundColor
        }
    }
}
