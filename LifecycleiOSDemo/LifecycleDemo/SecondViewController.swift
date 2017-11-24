//
//  SecondViewController.swift
//  LifecycleDemo
//
//  Created by romance on 2017/11/21.
//  Copyright © 2017年 firstleap. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.title = "第二个控制器"
  }
  
  @IBAction func push(_ sender: Any) {
    let thirdVc = ThirdViewController()
    navigationController?.pushViewController(thirdVc, animated: true)
  }
  
}
