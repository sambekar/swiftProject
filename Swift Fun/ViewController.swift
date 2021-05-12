//
//  ViewController.swift
//  Swift Fun
//
//  Created by zappycode on 6/13/18.
//  Copyright © 2018 Nick Walter. All rights reserved.
//

import UIKit

class ViewController:  UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var multipleofthree: [UIButton]!
    @IBOutlet var multipleoftwo: [UIButton]!
    @IBOutlet var multipleoffour: [UIButton]!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var multipleoffive: [UIButton]!
    @IBOutlet var multipleofsix: [UIButton]!
    @IBOutlet var multipleofsever: [UIButton]!
    
    @IBOutlet var multipleofeight: [UIButton]!
    
    @IBOutlet var multipleofnine: [UIButton]!
    @IBOutlet weak var numberPicker: UIPickerView!
    
    @IBOutlet var multipleoften: [UIButton]!
    var data = ["none", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // Column count: use one column.
                return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        for view in self.view.subviews as [UIView] {
            
            if let btn = view as? UIButton {
                if(btn.titleLabel?.text != "RESET"){
                btn.backgroundColor=UIColor.systemTeal
                }
            }
        }
        if (data[row] == "none"){
            for view in self.view.subviews as [UIView] {
                
                if let btn = view as? UIButton {
                    if(btn.titleLabel?.text != "RESET"){
                    btn.backgroundColor=UIColor.systemTeal
                    }
                }
            }
        }
        else if (data[row] == "2"){
            multipleoftwo.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
            //button.backgroundColor=UIColor.brown
        }
        else if (data[row] == "3"){
            multipleofthree.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
                
            }
            //button.backgroundColor=UIColor.cyan
        }
        else if (data[row] == "4"){
            multipleoffour.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
        }
        else if (data[row] == "5"){
            multipleoffive.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
        }
        else if (data[row] == "6"){
            multipleofsix.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
        }
        else if (data[row] == "7"){
            multipleofsever.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
        }
        else if (data[row] == "8"){
            multipleofeight.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
        }
        else if (data[row] == "9"){
            multipleofnine.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
        }
        else if (data[row] == "10"){
            multipleoften.forEach { (buttonLocal) in
                buttonLocal.backgroundColor = UIColor.green
            }
        }
    }
    func pickerView(_ pickerView: UIPickerView,
            titleForRow row: Int,
            forComponent component: Int) -> String? {
            return data[row]
        }
    
    
    
    

        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.numberPicker.dataSource = self
        self.numberPicker.delegate = self
        
        
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if(sender.titleLabel?.text=="RESET"){
            
            for view in self.view.subviews as [UIView] {
                
                if let btn = view as? UIButton {
                    if(btn.titleLabel?.text != "RESET"){
                    btn.backgroundColor=UIColor.systemTeal
                    }
                }
            }
            
        }else {
            sender.backgroundColor=UIColor.red
        }
    }
    
    
    
    
    
    
    
}

