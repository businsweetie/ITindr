//
//  AutorizationScreenViewController.swift
//  ITindr
//
//  Created by user218932 on 4/6/22.
//

import UIKit

class SignInScreenViewController: UIViewController {

    //MARK: -IBOutlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var returnBtn: UIButton!
    
    //MARK: -ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signInBtn.buttonSettings(colors: [StartScreenViewController.UIColorFromRGB(0xFA13AB).cgColor,StartScreenViewController.UIColorFromRGB(0xE813FA).cgColor], titleColor: .white)
        
        self.returnBtn.buttonSettings(colors: [UIColor.white.cgColor, UIColor.white.cgColor], titleColor: UIColor(named: "MyFirstColor")!)
        
        emailView.viewSettings()
        passwordView.viewSettings()
        
        setupBackroundTouch()
    }
    
    private func setupBackroundTouch(){
        backgroundImageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backroudTap))
        backgroundImageView.addGestureRecognizer(tapGesture)
    }
    
    @objc func backroudTap(){
        dismissKey()
    }
    
    private func dismissKey(){
        self.view.endEditing(false)
    }

}
