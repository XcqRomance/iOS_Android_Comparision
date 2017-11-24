//
//  BaseViewController.swift
//  LifecycleDemo
//
//  Created by romance on 2017/11/21.
//  Copyright © 2017年 firstleap. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

  // 前两个init方法是UIViewController的初始化方法
  // 非storyboard加载会调用此方法
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    print("\(self)\(#function)")
  }
  
  // 使用storyboard加载的UIViewController会调用此初始化方法
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    print("\(self)\(#function)")
  }
  
  // 视图的@IBOutlet和@IBAction链接完成再次方法中
  override func awakeFromNib() {
    super.awakeFromNib()
    print("\(self)\(#function)")
  }
  
  // Creates the view that the controller manages.
  // 此方法一般调用的少
  override func loadView() {
    super.loadView()
    print("\(self)\(#function)")
  }
  
  // Called after the controller's view is loaded into memory.
  // 控制器视图加载完成（加载到了内存）的时候调用,只被调用一次，我们一般在这个方法中进行数据的网路请求，约束的设置，以及视图的一些操作等等。
  override func viewDidLoad() {
    super.viewDidLoad()
    print("\(self)\(#function)")
  }
  
  // MARK: -分割线----上面的方法只会调用一次，下面的方法可能会调用多次
  
  // Notifies the view controller that its view is about to be added to a view hierarchy.
  // 视图即将显示的时候调用
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("\(self)\(#function)")
  }
  
  // Called to notify the view controller that its view is about to layout its subviews.
  // 控制器视图即将布局他的子视图时调用
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    print("\(self)\(#function)")
  }
  
  // Called to notify the view controller that its view has just laid out its subviews.
  // 控制器视图已经布局完其子视图后调用，在iphone X的适配就是在此方法中获取view.safeAreaInsets进行处理的，
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    print("\(self)\(#function)")
  }
  
  // Notifies the view controller that its view was added to a view hierarchy.
  // 试图已经完全显示的时候调用
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("\(self)\(#function)")
  }
  
  // Notifies the view controller that its view is about to be removed from a view hierarchy.
  // 视图即将被移除的时候调用
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("\(self)\(#function)")
  }
  
  // Notifies the view controller that its view was removed from a view hierarchy.
  // 视图已经被完全移除的时候调用
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("\(self)\(#function)")
  }
  
  // Sent to the view controller when the app receives a memory warning.
  // 手机收到内存警告的时候调用
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    print("\(self)\(#function)")
  }
  
  // 视图被销毁的时候调用，在这里可以执行的操作有：KVO移除，通知的移除，定时器的销毁
  deinit {
    print("\(self)\(#function)")
  }

}
