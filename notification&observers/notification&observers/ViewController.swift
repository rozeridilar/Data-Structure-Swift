//
//  ViewController.swift
//  notification&observers
//
//  Created by Kızılay on 2.04.2019.
//  Copyright © 2019 Turk Kizilay. All rights reserved.
//

import UIKit

let lightNotificationKey = "com.rozeridilar.notification.LightMode"
let darkNotificationKey = "com.rozeridilar.notification.DarkMode"

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    //MARK: Variables
    let light = Notification.Name(lightNotificationKey)
    let dark = Notification.Name(darkNotificationKey)
    
    //MARK: Lyfecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createObservers()

    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    //MARK: Actions
    @IBAction func chooseButtonTapped(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        present(secondVC, animated: true, completion: nil)
    }
    //MARK: Methods
    func createObservers() {
        //Light Observer
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateUI(notification:)), name: light, object: nil)
        //Dark Observer
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateUI(notification:)), name: dark, object: nil)
    }
    
    @objc func updateUI(notification: NSNotification) {
        let isLight = notification.name == light
        let image = isLight ? UIImage(named: "luke")! : UIImage(named: "vader")!
        mainImageView.image = image
        
        let color = isLight ? UIColor.cyan : UIColor.red
        self.view.backgroundColor = color
        
        let name = isLight ? "Luke Skywalker" : "Darth Vader"
        nameLabel.text = name
    }
}
//extension ViewController: SideSelectionDelegate{
//
//}

