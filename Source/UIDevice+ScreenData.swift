//
//  UIDevice+ScreenData.swift
//  DeviceGod
//
//  Created by Nicolas Degen on 02.08.18.
//  Copyright © 2018 Kapanu AG. All rights reserved.
//

import Foundation

extension UIDevice {
  static var currentScreenData: ScreenData!
  
  public var screenData: ScreenData! {
    if UIDevice.currentScreenData != nil {
      return UIDevice.currentScreenData
    }
    UIDevice.currentScreenData = screenDataTable[self.modelIdentifier]
    return UIDevice.currentScreenData
  }
}
