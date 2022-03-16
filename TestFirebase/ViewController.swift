//
//  ViewController.swift
//  TestFirebase
//
//  Created by Yashom on 16/03/22.
//

import UIKit
import Firebase
import GoogleSignIn
//google sign In

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func GoogleSigninBtn(_ sender: UIButton) {
        print("Google btn clicked.....")
        GIDSignIn.sharedInstance.signIn(with: GIDConfiguration.init(clientID: "879786320034-391ge2p87gba4br27979qgqniol8v4tt.apps.googleusercontent.com"), presenting: self) { googleUser, err in
            print("******************* \(googleUser)!")
            guard let googleUser = googleUser else {
                return
            }
            print(googleUser.profile?.email)
        }
        
    }
    
}

