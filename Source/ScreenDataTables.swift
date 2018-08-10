//
//  ScreenDataTables.swift
//  DeviceGod
//
//  Created by Nicolas Degen on 31.07.18.
//  Copyright © 2018 Kapanu AG. All rights reserved.
//

import Foundation

public struct ScreenData {
  public enum Unit {
    case inch
    case centimeters
  }
  
  public let resolution:CGSize // physical pixels
  public let ppi:CGFloat       // physical pixels per inch
  
  public func size(forUnit unit: Unit) -> CGSize {
    switch unit {
    
    // Also round to one decimal digit
    case .inch:
      return CGSize(width: round(self.resolution.width / self.ppi * 10) / 10,
                    height: round(self.resolution.height / self.ppi * 10) / 10)
    case .centimeters:
      return CGSize(width: round(self.resolution.width * 2.54 / self.ppi * 10) / 10,
                    height: round(self.resolution.height * 2.54 / self.ppi * 10) / 10)
    }
  }
}

let screenDataTable = [
  /// iPhone
  // iPhone 1
  "iPhone1,1": ScreenData(resolution: CGSize(width: 320, height: 480), 
                          ppi: 163),
  
  // iPhone 3G
  "iPhone1,2": ScreenData(resolution: CGSize(width: 320, height: 480), 
                          ppi: 163),
  
  // iPhone 3GS
  "iPhone2,1": ScreenData(resolution: CGSize(width: 320, height: 480), 
                          ppi: 163),
  
  // iPhone 4 (GSM)
  "iPhone3,1": ScreenData(resolution: CGSize(width: 640, height: 960), 
                          ppi: 326),
  
  // iPhone 4 (CDMA/Verizon/Sprint)
  "iPhone3,3": ScreenData(resolution: CGSize(width: 640, height: 960), 
                          ppi: 326),
  
  // iPhone 4S
  "iPhone4,1": ScreenData(resolution: CGSize(width: 640, height: 960), 
                          ppi: 326),
  
  // iPhone 5 (model A1428, AT&T/Canada)
  "iPhone5,1": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                          ppi: 326),
  
  // iPhone 5 (model A1429, everything else)
  "iPhone5,2": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                          ppi: 326),
  
  // iPhone 5c (model A1456, A1532 | GSM)
  "iPhone5,3": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                          ppi: 326),
  
  // iPhone 5c (model A1507, A1516, A1526 (China), A1529 | Global)
  "iPhone5,4": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                          ppi: 326),
  
  // iPhone 5s (model A1433, A1533 | GSM)
  "iPhone6,1": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                          ppi: 326),
  
  // iPhone 5s (model A1457, A1518, A1528 (China), A1530 | Global)
  "iPhone6,2": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                          ppi: 326),
  
  // iPhone 6 Plus
  "iPhone7,1": ScreenData(resolution: CGSize(width: 1242, height: 2208), 
                          ppi: 401),
  
  // iPhone 6
  "iPhone7,2": ScreenData(resolution: CGSize(width: 750, height: 1334), 
                          ppi: 326),
  
  // iPhone 6S
  "iPhone8,1": ScreenData(resolution: CGSize(width: 1242, height: 2208), 
                          ppi: 326),
  
  // iPhone 6S Plus
  "iPhone8,2": ScreenData(resolution: CGSize(width: 1242, height: 2208), 
                          ppi: 401),
  
  // iPhone SE
  "iPhone8,4": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                          ppi: 326),
  
  // iPhone 7 (CDMA)
  "iPhone9,1": ScreenData(resolution: CGSize(width: 750, height: 1334), 
                          ppi: 326),
  
  // iPhone 7 (GSM)
  "iPhone9,3": ScreenData(resolution: CGSize(width: 750, height: 1334), 
                          ppi: 326),
  
  // iPhone 7 Plus (CDMA)
  "iPhone9,2": ScreenData(resolution: CGSize(width: 1242, height: 2208), 
                          ppi: 401),
  
  // iPhone 7 Plus (GSM)
  "iPhone9,4": ScreenData(resolution: CGSize(width: 1242, height: 2208), 
                          ppi: 401),
  
  // iPhone 8 (CDMA)
  "iPhone10,1": ScreenData(resolution: CGSize(width: 750, height: 1334), 
                           ppi: 326),
  
  // iPhone 8 (GSM)
  "iPhone10,4": ScreenData(resolution: CGSize(width: 750, height: 1334), 
                           ppi: 326),
  
  // iPhone 8 Plus (CDMA)
  "iPhone10,2": ScreenData(resolution: CGSize(width: 1242, height: 2208), 
                           ppi: 401),
  
  // iPhone 8 Plus (GSM)
  "iPhone10,5": ScreenData(resolution: CGSize(width: 1242, height: 2208), 
                           ppi: 401),
  
  // iPhone X (CDMA)
  "iPhone10,3": ScreenData(resolution: CGSize(width: 1125, height: 2436), 
                           ppi: 458),
  
  // iPhone X (GSM)
  "iPhone10,6": ScreenData(resolution: CGSize(width: 1125, height: 2436), 
                           ppi: 458),
  
  /// iPad
  // iPad - Wifi (model A1219) or iPad - Wifi + Cellular (model A1337)
  "iPad1,1": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 132),
  
  // iPad 2 Wifi (model A1395)
  "iPad2,1": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 132),
  
  // iPad 2 GSM (model A1396)
  "iPad2,2": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 132),
  
  // iPad 2 3G (model A1397)
  "iPad2,3": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 132),
  
  // iPad 2 Wifi (model A1395)
  "iPad2,4": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 132),
  
  // iPad Mini Wifi (model A1432)
  "iPad2,5": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 163),
  
  // iPad Mini Wifi + Cellular (model  A1454)
  "iPad2,6": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 163),
  
  // iPad Mini Wifi + Cellular (model  A1455)
  "iPad2,7": ScreenData(resolution: CGSize(width: 1024, height: 768), 
                        ppi: 163),
  
  // iPad 3 Wifi (model A1416)
  "iPad3,1": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad 3 Wifi + Cellular (model  A1403)
  "iPad3,2": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad 3 Wifi + Cellular (model  A1430)
  "iPad3,3": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad 4 Wifi (model A1458)
  "iPad3,4": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad 4 Wifi + Cellular (model  A1459)
  "iPad3,5": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad 4 Wifi + Cellular (model  A1460)
  "iPad3,6": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Air Wifi (model A1474)
  "iPad4,1": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Air Wifi + Cellular (model A1475)
  "iPad4,2": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Air Wifi + Cellular (model A1476)
  "iPad4,3": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Mini 2 Wifi (model A1489)
  "iPad4,4": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 326),
  
  // iPad Mini 2 Wifi + Cellular (model A1490)
  "iPad4,5": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 326),
  
  // iPad Mini 2 Wifi + Cellular (model A1491)
  "iPad4,6": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 326),
  
  // iPad Mini 3 Wifi (model A1599)
  "iPad4,7": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 326),
  
  // iPad Mini 3 Wifi + Cellular (model A1600)
  "iPad4,8": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 326),
  
  // iPad Mini 3 Wifi + Cellular (model A1601)
  "iPad4,9": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 326),
  
  // iPad Mini 4 Wifi (model A1538)
  "iPad5,1": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 326),
  
  // iPad Mini 4 Wifi + Cellular (model A1550)
  "iPad5,2": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Air 2 Wifi (model A1566)
  "iPad5,3": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Air 2 Wifi + Cellular (model A1567)
  "iPad5,4": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Pro 9.7" Wifi (model A1673)
  "iPad6,3": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Pro 9.7" Wifi + Cellular (model A1674) or Wifi + Cellular (model A1675)
  "iPad6,4": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                        ppi: 264),
  
  // iPad Pro 12.9" Wifi (model A1584)
  "iPad6,7": ScreenData(resolution: CGSize(width: 2048, height: 2732), 
                        ppi: 264),
  
  // iPad Pro 12.9" Wifi + Cellular (model A1652)
  "iPad6,8": ScreenData(resolution: CGSize(width: 2048, height: 2732), 
                        ppi: 264),
  
  // iPad (5th generation) Wifi (model A1822)
  "iPad6,11": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                         ppi: 264),
  
  // iPad (5th generation) Wifi + Cellular (model A1823)
  "iPad6,12": ScreenData(resolution: CGSize(width: 1536, height: 2048), 
                         ppi: 264),
  
  // iPad Pro 12.9" 2nd Gen Wifi (model A1670)
  "iPad7,1": ScreenData(resolution: CGSize(width: 2048, height: 2732), 
                        ppi: 264),
  
  // iPad Pro 12.9" 2nd Gen Wifi + Cellular (model A1671) or Wifi + Cellular (model A1821)
  "iPad7,2": ScreenData(resolution: CGSize(width: 2048, height: 2732), 
                        ppi: 264),
  
  // iPad Pro 10.5" Wifi (model A1701)
  "iPad7,3": ScreenData(resolution: CGSize(width: 1668, height: 2224), 
                        ppi: 264),
  
  // iPad Pro 10.5" Wifi + Cellular (model A1709)
  "iPad7,4": ScreenData(resolution: CGSize(width: 1668, height: 2224), 
                        ppi: 264),
  
  /// iPod Touch
  // iPod Touch First Generation
  "iPod1,1": ScreenData(resolution: CGSize(width: 320, height: 480), 
                        ppi: 163),
  
  // iPod Touch Second Generation
  "iPod2,1": ScreenData(resolution: CGSize(width: 320, height: 480), 
                        ppi: 163),
  
  // iPod Touch Third Generation
  "iPod3,1": ScreenData(resolution: CGSize(width: 320, height: 480), 
                        ppi: 163),
  
  // Pod Touch Fourth Generation
  "iPod4,1": ScreenData(resolution: CGSize(width: 640, height: 960), 
                        ppi: 326),
  
  // Pod Touch Fourth Generation
  "iPod5,1": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                        ppi: 326),
  
  // Pod Touch 6th Generation"
  "iPod7,1": ScreenData(resolution: CGSize(width: 640, height: 1136), 
                        ppi: 326)]
