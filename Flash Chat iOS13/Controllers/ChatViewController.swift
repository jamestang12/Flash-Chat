//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by James Tang on 06/01/2021.
//  Copyright © 2021 James Tang. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "⚡️FlashChat"
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
        
    } catch let signOutError as NSError {
      print ("Error signing out: %@", signOutError)
    }
      
    }
    
}
