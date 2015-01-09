//
//  ViewController.swift
//  Swift_Sample_Count
//
//  Created by Ryo Eguchi on 2014/12/31.
//  Copyright (c) 2014年 Ryo Eguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //変数の宣言
    var number:Int = 0
    //関連付け
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(sender: AnyObject) {
        number = number + 1 //number++でも可
        updateLabel() //updateLabelを呼び出す
    }
    
    //呼び出されたもの
    func updateLabel(){
        if number>=20{
            label.textColor = UIColor.redColor()
        }else if number>=10{
            label.textColor = UIColor.blueColor()
        }else {
            label.textColor=UIColor.blackColor()
        }
        
        label.text = "\(number)" //labelに表示
    }

}

