//
//  ViewController2.swift
//  sample3
//
//  Created by Nieda Miho on 2015/04/27.
//  Copyright (c) 2015年 Nieda Miho. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        label.text =  appDelegate.ViewVal // Labelに値引き渡し用のプロパティから取得して設定する。
    }
}