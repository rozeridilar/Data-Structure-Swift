//
//  ViewController.swift
//  notification&observers
//
//  Created by Kızılay on 2.04.2019.
//  Copyright © 2019 Turk Kizilay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    
    //MARK: Lyfecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    //MARK: Actions
    @IBAction func chooseButtonTapped(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        secondVC.selectionDelegate = self
        present(secondVC, animated: true, completion: nil)
    }
    
}
extension ViewController: SideSelectionDelegate{
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        self.view.backgroundColor = color
    }
}

