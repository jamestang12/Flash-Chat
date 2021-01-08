//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by James Tang on 06/01/2021.
//  Copyright © 2021 James Tang. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️FlashChat"
        
//        titleLabel.text = ""
//        let titleText = "⚡️FlashChat"
//        var charIndex = 0.0
//        for letter in titleText{
//            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false){
//                (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
       
    }
    

}
