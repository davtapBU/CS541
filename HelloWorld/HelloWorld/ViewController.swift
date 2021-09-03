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
        self.becomeFirstResponder()
    }
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }

    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let alertController = UIAlertController(title: "Ah!", message: "Don't shake me!", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Sorry", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBOutlet var mySwitch : UISwitch!
    @IBOutlet var myButton : UIButton!

    @IBAction func showMessage(sender: UIButton) {
        if mySwitch.isOn {
            let alertController = UIAlertController(title: "Alert", message: "Hello World!", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
        else {
            let alertController = UIAlertController(title: "Alert", message: "Goodnight World!", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func changeTheme(sender: UISwitch) {
        if mySwitch.isOn {
            self.view.backgroundColor = UIColor.systemTeal
            myButton.setTitle("☀️", for: .normal)
        }
        else {
            self.view.backgroundColor = UIColor.systemIndigo
            myButton.setTitle("🌙", for: .normal)
        }
    }
}

