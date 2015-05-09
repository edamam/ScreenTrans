//
//  ViewController.swift
//  sample3
//
//  Created by Nieda Miho on 2015/04/27.
//  Copyright (c) 2015年 Nieda Miho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var text: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated) //エフェクト関係のパラメタだと思うが、今回は使用しないので、基底クラスを呼び出して、終わり。
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //AppDelegateオブジェクトの呼び出し。as ◯◯はSwiftのキャスト表現
        appDelegate.ViewVal = text.text
        // TextFieldの値を取得し、値引き渡し用のプロパティにセット
    }

}

