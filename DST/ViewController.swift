//
//  ViewController.swift
//  DST
//
//  Created by Crane on 11/20/16.
//  Copyright © 2016 GoldITDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var propertyMenuBar: UIView!
    
    @IBOutlet weak var equipMenuBar: UIView!

    @IBOutlet weak var proMenuBtn: DropMenuButton!

    @IBOutlet weak var equMenuBtn: DropMenuButton!
    @IBOutlet weak var chooseBtn: UIButton!
    @IBOutlet weak var uploadBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        propertyMenuBar.layer.borderColor = UIColor.darkGray.cgColor
        propertyMenuBar.layer.cornerRadius = 3
        propertyMenuBar.layer.borderWidth = 1
        equipMenuBar.layer.borderColor = UIColor.darkGray.cgColor
        equipMenuBar.layer.cornerRadius = 3
        equipMenuBar.layer.borderWidth = 1
        chooseBtn.layer.borderWidth = 1
        chooseBtn.layer.borderColor = UIColor.gray.cgColor
        chooseBtn.layer.cornerRadius = 3
        uploadBtn.layer.borderWidth = 1
        uploadBtn.layer.borderColor = UIColor.gray.cgColor
        uploadBtn.layer.cornerRadius = 3
 
        proMenuBtn.initMenu(["Pro A", "Pro B", "Pro C"], actions: [({ () -> (Void) in
            print("Pro A")
        }), ({ () -> (Void) in
            print("Pro B")
        }), ({ () -> (Void) in
            print("Pro C")
        })])

        equMenuBtn.initMenu(["Equ A", "Equ B", "Equ C"], actions: [({ () -> (Void) in
            print("Equ A")
        }), ({ () -> (Void) in
            print("Equ B")
        }), ({ () -> (Void) in
            print("Equ C")
        })])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseFile(_ sender: Any) {
    }

    @IBAction func uploadFile(_ sender: Any) {
    }

}

