//
//  ChooseNameViewController.swift
//  ios-throwaway
//
//  Created by Adrian Lesniak on 21/11/2020.
//

import UIKit

class ChooseNameViewController: UIViewController {
    
    var chosenName: String? = nil

    @IBAction func confirmName(_ sender: Any) {
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { _ in
            self.performSegue(withIdentifier: "confirmNameSeque", sender: nil)
        }
    }
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameField.text = chosenName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        chosenName = nameField.text
    }


}
