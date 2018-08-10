//
//  CGRect+ScreenUnitToPoint.swift
//  DeviceGod
//
//  Created by Nicolas Degen on 10.08.18.
//  Copyright © 2018 Kapanu AG. All rights reserved.
//

import Foundation

extension CGRect {
  // returns the point equivalent for current device's
  public func screenUnitToPoints(unit unitType: ScreenData.Unit) -> CGRect! {
    if let screenData = UIDevice.currentScreenData {
      var transform: CGAffineTransform!
      switch unitType {
      case .centimeters:
        transform = CGAffineTransform(scaleX: screenData.ppi / 2.54, y: screenData.ppi / 2.54)
        transform.concatenating(CGAffineTransform(translationX: self.midX * screenData.ppi / 2.54, y: self.midY * screenData.ppi / 2.54))
      case .inch:
        transform = CGAffineTransform(scaleX: screenData.ppi, y: screenData.ppi)
        transform.concatenating(CGAffineTransform(translationX: self.midX * screenData.ppi, y: self.midY * screenData.ppi))
      }
      return self.applying(transform)
    }
    return nil
  }
}
