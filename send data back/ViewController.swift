//
//  ViewController.swift
//  send data back
//
//  Created by Mohamed Mido on 10/7/18.
//  Copyright © 2018 Mohamed Mido. All rights reserved.
//

import UIKit

class ViewController: UIViewController,sendDataBack {
    func datatReturning(data: String) {
        LAbel.text = data
    }
    

    @IBOutlet weak var LAbel: UILabel!
    
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func action(_ sender: Any) {
        performSegue(withIdentifier: "Show", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show"{
            let destnation = segue.destination as! SecondViewController
            destnation.dataGo = text.text!
            destnation.delegate = self
        }
    
    }
}

