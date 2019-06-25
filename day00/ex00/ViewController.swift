//
//  ViewController.swift
//  ex00
//
//  Created by Anton Sviridov on 6/24/19.
//  Copyright © 2019 Antonio Sviridov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var buffer:String = "0"
    var buffer2:String = "0"
    private var operatorBuffer:String = "0"
    var isClick = false;
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnClickOne(_ sender: Any) {
        if (isClick) {
            swap()
        }
        buffer += "1"
        print(1)
        self.label.text = buffer
    }
    

    @IBAction func OnClickTwo(_ sender: Any) {
        if (isClick) {
            swap()
        }
        buffer += "2"
         print(2)
        self.label.text = buffer
    }
    
    @IBAction func OnClickThree(_ sender: Any) {
        if (isClick) {
            swap()
        }
         print(3)
        self.buffer += "3"
        self.label.text = buffer
    }
    
    @IBAction func OnClickFour(_ sender: Any) {
        if (isClick) {
            swap()
        }
         print(4)
        self.buffer += "4"
        self.label.text = buffer
    }
    
    @IBAction func OnClickFive(_ sender: Any) {
        if (isClick) {
            swap()
        }
         print(5)
        self.buffer += "5"
        self.label.text = buffer
    }
    
    @IBAction func OnClickSix(_ sender: Any) {
        if (isClick) {
            swap()
        }
         print(6)
        self.buffer += "6"
        self.label.text = buffer
    }
    
    @IBAction func OnClickSeven(_ sender: Any) {
        if (isClick) {
            swap()
        }
         print(7)
        self.buffer += "7"
        self.label.text = buffer
    }
    
    @IBAction func OnClickEight(_ sender: Any) {
        if (isClick) {
            swap()
        }
         print(8)
        self.buffer += "8"
        self.label.text = buffer
    }
    
    @IBAction func OnClickNine(_ sender: Any) {
        if (isClick) {
            swap()
        }
         print(9)
        self.buffer += "9"
        self.label.text = buffer
    }
    
    @IBAction func OnClickZero(_ sender: Any) {
        if (isClick) {
            swap()
        }
        if (self.buffer != "0") {
            self.buffer += "0"
        }
         print(0)
        self.label.text = buffer
    }
    
    @IBAction func OnClickAc(_ sender: Any) {
        self.operatorBuffer = ""
        self.buffer2 = "0"
        self.buffer = "0"
        self.label.text = buffer
         print("ac")
    }
    
    @IBAction func OnClickNeg(_ sender: Any) {
        var tmp = Double(buffer)
        tmp = tmp! * -1
        self.buffer = String(tmp!)
        self.label.text = self.buffer
        print("neg")
    }
    
    @IBAction func OnClickAdd(_ sender: Any) {
        self.operatorBuffer = "+"
        isClick = true
        print("+")
    }
    
    @IBAction func OnClickSub(_ sender: Any) {
        self.operatorBuffer = "-"
        isClick = true
         print("-")
    }
    
    @IBAction func OnClickDiv(_ sender: Any) {
        self.operatorBuffer = "/"
        isClick = true
         print("/")
    }
    
    @IBAction func OnClickMul(_ sender: Any) {
        self.operatorBuffer = "*"
        isClick = true
         print("*")
    }
    
    @IBAction func result(_ sender: Any) {
        print("=")
        do {
            try r()
        } catch {
            print ("ERROR")
        }
    }
    
   func r() throws {
            if (isClick) {
                if (self.operatorBuffer == "*") {
                    self.buffer = String(Double(self.buffer)! * Double(self.buffer)!)
                }
                else if (self.operatorBuffer == "/" ) {
                    if (self.buffer == "0") {
                        self.label.text = "INF";
                        return ;
                    }
                    else {
                        self.buffer = String(Double(self.buffer)! / Double(self.buffer)!)
                    }
                }
                else if (self.operatorBuffer == "+" ) {
                    if (self.buffer == "0") {
                        self.buffer = buffer2
                    }
                    else {
                        self.buffer = String(Double(self.buffer)! + Double(self.buffer)!)
                    }
                }
                else if (self.operatorBuffer == "-" ) {
                    self.buffer = String(Double(self.buffer)! - Double(self.buffer)!)
                }
                else if (self.operatorBuffer == "0" ) {
                    return ;
                }
            }
            else {
                if (self.operatorBuffer == "*") {
                    self.buffer = String(Double(self.buffer2)! * Double(self.buffer)!)
                }
                else if (self.operatorBuffer == "/" ) {
                    if (self.buffer == "0") {
                        self.label.text = "INF";
                        return ;
                    }
                    else {
                        print(buffer)
                        self.buffer = String(Double(self.buffer2)! / Double(self.buffer)!)
                    }
                }
                else if (self.operatorBuffer == "+" ) {
                    if (self.buffer == "0") {
                        self.buffer = buffer2
                    }
                    else {
                        self.buffer = String(Double(self.buffer2)! + Double(self.buffer)!)
                    }
                }
                else if (self.operatorBuffer == "-" ) {
                    self.buffer = String(Double(self.buffer2)! - Double(self.buffer)!)
                }
                else if (self.operatorBuffer == "0" ) {
                    return ;
                }
                self.operatorBuffer = "0"
                self.buffer2 = "0"
            }
        self.label.text = buffer;
    }
    
    private func swap() {
        self.buffer2 = self.buffer
        self.buffer = "0"
        isClick = false
    }
}

