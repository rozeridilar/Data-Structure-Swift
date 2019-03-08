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
        
        view.bringSubviewToFront(fileImageView)
    }

    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePan(_:)))
        view.addGestureRecognizer(pan)
    }
    
    @objc func handlePan(_ sender: UIPanGestureRecognizer){
        let fileView = sender.view
     
        
        switch sender.state {
        case .began,.changed:
            moveViewWithPan(view: fileView!, sender: sender)
        case .ended:
            if fileView!.frame.intersects(trashImageView.frame){
                deleteView(fileView!)
            }else{
              
                putViewToOrigin(fileView!)
            }
        default:
            break
        }
        
    }
    
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer){
         let translation = sender.translation(in: view)
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    func deleteView(_ fileView: UIView){
        UIView.animate(withDuration: 0.3) {
            fileView.alpha = 0.0
        }
    }
    func putViewToOrigin(_ fileView: UIView){
        UIView.animate(withDuration: 0.3) {
            fileView.frame.origin = self.fileViewOrigin
        }
    }

}

