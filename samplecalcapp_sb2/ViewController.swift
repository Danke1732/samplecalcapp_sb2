//
//  ViewController.swift
//  samplecalcapp_sb2
//
//  Created by 福田拓哉 on 2021/06/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.textColor = UIColor.green
        myLabel.font = UIFont.systemFont(ofSize: 20.0, weight: UIFont.Weight.bold)
    }
    
    @IBAction func onTap(_ sender: UIButton) {
        print("onTap!")
        self.performSegue(withIdentifier: "toPage2", sender: nil)
    }
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func onChange(_ sender: UITextField) {
        // TextFieldから文字を取得
        let textFieldString = myTextField.text!
        print(textFieldString)
        //myTextField.
    }
    
    @IBAction func onValueChange(_ sender: UITextField) {
        
        //print("aa")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toPage2" {
            let vc = segue.destination as? Page2ViewController
            vc?.attrInt = 1
        }
        
        
//
//        if let vc = segue.identifier as? Page2ViewController {
//            vc.attrInt = 1
//        }
//        if segue.identifier == "toPage2" {
//            let vc = segue.description as! Page2ViewController
//
//        }
    }
}

