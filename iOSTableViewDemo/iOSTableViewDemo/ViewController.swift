//
//  ViewController.swift
//  iOSTableViewDemo
//
//  Created by romance on 2017/11/28.
//  Copyright © 2017年 firstleap. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  final fileprivate var dataList = [TestModel]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let nib = UINib(nibName: "TestTableViewCell", bundle: nil)
    tableView.register(nib, forCellReuseIdentifier: "TestTableViewCell")
    setupData()
  }
  
  private func setupData() {
    for _ in 0...100 {
      let model1 = TestModel(imageName: "set_icon_about", title: "关于")
      dataList.append(model1)
      let model2 = TestModel(imageName: "set_icon_change", title: "头像")
      dataList.append(model2)
      let model3 = TestModel(imageName: "set_icon_clean", title: "清楚")
      dataList.append(model3)
      let model4 = TestModel(imageName: "set_icon_edit", title: "修改")
      dataList.append(model4)
    }
  }
  
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath) as! TestTableViewCell
    let model = dataList[indexPath.row]
    cell.icon?.image = UIImage(named: model.imageName);
    cell.title?.text = model.title
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
    let model = dataList[indexPath.row]
    let showtitle = model.title
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
    label.text = showtitle
    label.textAlignment = .center
    label.backgroundColor = .lightGray
    label.center = view.center
    label.alpha = 0
    self.view.addSubview(label)
    
    UIView.animate(withDuration: 0.25, animations: {
      label.alpha = 1
    }) { (b) in
      DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: {
        UIView.animate(withDuration: 0.25, animations: {
          label.alpha = 0
        }, completion: { (b) in
          label.removeFromSuperview()
        })
      })
    }
  }
}

