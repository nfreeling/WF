//
//  ViewController.swift
//  TempConverter
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAction(sender: AnyObject) {
        let temp = Temperature(
            scale:.F, value:(tempField.text! as NSString).doubleValue
        )
        let converter = TempConverter()
        let result = converter.convert(temp, toScale:.C)
        
        resultLabel.text = String(format: "%.2f", result.value)
    }

}

