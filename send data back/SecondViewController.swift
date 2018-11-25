//
//  SecondViewController.swift
//  send data back
//
//  Created by Mohamed Mido on 10/7/18.
//  Copyright © 2018 Mohamed Mido. All rights reserved.
//

import UIKit
protocol sendDataBack{
    func datatReturning(data : String)
    
}

class SecondViewController: UIViewController {
    var dataGo = ""
    var delegate:sendDataBack?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textBack: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = dataGo

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionBack(_ sender: Any) {
        let data = textBack.text!
        delegate?.datatReturning(data: data)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
