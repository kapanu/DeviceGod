//
//  UIDevice+ModelIdentifier.swift
//  DeviceGod
//
//  Created by Nicolas Degen on 31.07.18.
//  Copyright © 2018 Kapanu AG. All rights reserved.
//

import Foundation

extension UIDevice {
  public var modelIdentifier: String {
    #if targetEnvironment(simulator)
    let identifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"]!
    #else
    var systemInfo = utsname()
    uname(&systemInfo)
    let machineMirror = Mirror(reflecting: systemInfo.machine)
    let identifier = machineMirror.children.reduce("") { identifier, element in
    guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }
    #endif
    
    return identifier
  }
}
