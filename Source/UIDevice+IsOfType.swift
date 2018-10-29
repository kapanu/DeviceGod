//
//  UIDevice+IsOfType.swift
//  DeviceGod
//
//  Created by Nicolas Degen on 31.07.18.
//  Copyright © 2018 Kapanu AG. All rights reserved.
//

import Foundation

extension UIDevice {
  public func isOfType(_ deviceType: UIDeviceType) -> Bool {
    switch deviceType {
    case .iPhone:
      return self.model.hasPrefix("iPhone")
    case .iPad:
      return self.model.hasPrefix("iPad")
    case .iPodTouch:
      return self.model.hasPrefix("iPod")
    case .iPhoneX:
      return self.modelIdentifier == "iPhone10,3" || self.modelIdentifier == "iPhone10,6"
    case .iPhoneXFamily:
      // iPhone X
      return self.modelIdentifier == "iPhone10,3" || self.modelIdentifier == "iPhone10,6"
        // iPhone XS, XS Max and XR
        || self.modelIdentifier == "iPhone11,2" || self.modelIdentifier == "iPhone11,4"
        || self.modelIdentifier == "iPhone11,6" || self.modelIdentifier == "iPhone11,8"
    case .iPhoneSE:
      return self.modelIdentifier == "iPhone8,4"
    case .iPhonePlus:
      return self.modelIdentifier == "iPhone7,1" || self.modelIdentifier == "iPhone8,2" || self.modelIdentifier == "iPhone9,2" || self.modelIdentifier == "iPhone9,4" || self.modelIdentifier == "iPhone10,2" || self.modelIdentifier == "iPhone10,5"
    case .iPadPro12_9:
      // iPad Pro 12.9",
      return self.modelIdentifier == "iPad6,7" || self.modelIdentifier == "iPad6,8"
        // iPad Pro 12.9" (2nd Gen)
        || self.modelIdentifier == "iPad7,1" || self.modelIdentifier == "iPad7,2"
    case .iPadPro:
      // iPad Pro 9.7",
      return self.modelIdentifier == "iPad6,3" || self.modelIdentifier == "iPad6,4"
        // iPad Pro 12.9",
        || self.modelIdentifier == "iPad6,7" || self.modelIdentifier == "iPad6,8"
        // iPad Pro 12.9" (2nd Gen)
        || self.modelIdentifier == "iPad7,1" || self.modelIdentifier == "iPad7,2"
        // iPad Pro 10.5",
        || self.modelIdentifier == "iPad7,3" || self.modelIdentifier == "iPad7,4"
    case .iPadMini:
      // iPad Mini
      return self.modelIdentifier == "iPad2,5" || self.modelIdentifier == "iPad2,6" || self.modelIdentifier == "iPad2,7"
        // iPad Mini 2
        || self.modelIdentifier == "iPad4,4" || self.modelIdentifier == "iPad4,5" || self.modelIdentifier == "iPad4,6"
        // iPad Mini 3
        || self.modelIdentifier == "iPad4,7" || self.modelIdentifier == "iPad4,8" || self.modelIdentifier == "iPad4,9"
        // iPad Mini 4
        || self.modelIdentifier == "iPad5,1" || self.modelIdentifier == "iPad5,2"
    }
  }
}
