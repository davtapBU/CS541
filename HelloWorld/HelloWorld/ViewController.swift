//
//  ViewController.swift
//  HelloWorld
//
//  Created by David Tapia on 9/1/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var mySwitch : UISwitch!
    @IBOutlet var myButton : UIButton!

    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "This app is lit", message: "Hello World!", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func changeTheme(sender: UISwitch) {
        if mySwitch.isOn {
            self.view.backgroundColor = UIColor.systemTeal
        }
        else {
            self.view.backgroundColor = UIColor.systemIndigo
        }
    }

}

