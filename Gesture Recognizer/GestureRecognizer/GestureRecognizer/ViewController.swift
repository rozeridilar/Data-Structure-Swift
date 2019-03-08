//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Kızılay on 8.03.2019.
//  Copyright © 2019 Turk Kizilay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fileImageView: UIImageView!
    @IBOutlet weak var trashImageView: UIImageView!
    
    var fileViewOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addPanGesture(view: fileImageView)
        fileViewOrigin = fileImageView.frame.origin
    }

    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePan(_:)))
        view.addGestureRecognizer(pan)
    }
    
    @objc func handlePan(_ sender: UIPanGestureRecognizer){
        let fileView = sender.view
        let translation = sender.translation(in: view)
        
    }

}

