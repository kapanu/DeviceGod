//
//  ViewController.swift
//  Theophany
//
//  Created by Nicolas Degen on 31.07.18.
//  Copyright © 2018 Kapanu AG. All rights reserved.
//

import UIKit

import DeviceGod

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    print(UIDevice.current.modelIdentifier)
    print(UIDevice.current.isOfType(.iPad))
    print(UIDevice.current.screenData!.ppi)
    print(UIDevice.current.screenData!.size(forUnit: .centimeters).width)
    print(CGRect(x: 1, y: 2, width: 3, height: 4).screenUnitToPoints(unit: .centimeters))
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
