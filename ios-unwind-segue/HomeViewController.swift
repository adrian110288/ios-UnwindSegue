//
//  HomeViewController.swift
//  ios-throwaway
//
//  Created by Adrian Lesniak on 21/11/2020.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToChooseName" {
            
            if let destinationVC = segue.destination as? ChooseNameViewController {
                destinationVC.chosenName = nameLabel.text
            }
        }
    }
    

    @IBAction func nameChosen(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? ChooseNameViewController {
            nameLabel.text = vc.chosenName
        }
    }

}
