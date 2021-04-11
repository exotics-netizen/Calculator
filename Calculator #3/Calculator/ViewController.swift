//
//  ViewController.swift
//  Calculator
//
//  Created by MAC on 11/11/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    @IBOutlet weak var hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatik: "+")
    }
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatik: "-")
    }
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(aritmatik: "/")
    }
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(aritmatik: "*")
    }
    
    func hitung(aritmatik: String){
        if TextField1.text == "" || TextField2.text == ""{
            hasil.text = "kolomnya harus diisi"
        }else{
            let input1 = Double(TextField1.text!)
            let input2 = Double(TextField2.text!)
            var jumlah: Double?
            switch aritmatik {
            case "+":
                jumlah = input1! + input2!
            case "-":
                jumlah = input1! - input2!
            case "/":
                jumlah = input1! / input2!
            case "*":
                jumlah = input1! * input2!
            default:
                break
            }
            hasil.text = String(jumlah!)
        }
    }
}

