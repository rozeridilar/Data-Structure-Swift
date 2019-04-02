//
//  SecondViewController.swift
//  notification&observers
//
//  Created by Kızılay on 2.04.2019.
//  Copyright © 2019 Turk Kizilay. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            dismiss(animated: true, completion: nil)
            break
        case 2:
            dismiss(animated: true, completion: nil)
            break
        default:
            break
        }
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
