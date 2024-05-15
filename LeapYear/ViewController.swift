//
//  ViewController.swift
//  LeapYear
//
//  Created by Hakan Çetin on 15.05.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func button(_ sender: UIButton) {
        guard let yearText = textLabel.text,
                      let year = Int(yearText) else {
                    label.text = "Geçersiz yıl"
                    return
                }
                // Artık yıl kontrolü yapılıyor
                if isLeap(year: year) {
                    label.text = "Artık yıl"
                } else {
                    label.text = "Artık yıl değil"
                }
    }
    
    func isLeap(year: Int) -> Bool {
            return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
        }
    
}

