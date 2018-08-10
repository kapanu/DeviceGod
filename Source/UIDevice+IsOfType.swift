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
    case .iPhoneSE:
      return self.modelIdentifier == "iPhone8,4"
    case .iPhonePlus:
      return self.modelIdentifier == "iPhone7,1" || self.modelIdentifier == "iPhone8,2" || self.modelIdentifier == "iPhone9,2" || self.modelIdentifier == "iPhone9,4" || self.modelIdentifier == "iPhone10,2" || self.modelIdentifier == "iPhone10,5"
    case .iPadPro12_9:
      return self.modelIdentifier == "iPhone6,7" || self.modelIdentifier == "iPhone6,8" || self.modelIdentifier == "iPhone7,1" || self.modelIdentifier == "iPhone7,2"
    }
  }
}
