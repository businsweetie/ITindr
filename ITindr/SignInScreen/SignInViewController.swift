//
//  AutorizationScreenViewController.swift
//  ITindr
//
//  Created by user218932 on 4/6/22.
//

import UIKit

class SignInViewController: UIViewController {

    //MARK: -IBOutlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var returnBtn: UIButton!
    @IBOutlet var screenView: UIView!
    
    //MARK: -ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signInBtn.buttonSettings(colors: [StartScreenViewController.UIColorFromRGB(0xFA13AB).cgColor,StartScreenViewController.UIColorFromRGB(0xE813FA).cgColor], titleColor: .white)
        
        self.returnBtn.buttonSettings(colors: [UIColor.white.cgColor, UIColor.white.cgColor], titleColor: UIColor(named: "MyFirstColor")!)
        
        emailView.viewSettings()
        passwordView.viewSettings()
        
        setupBackroundTouch()
    }
    
    //MARK: -IBActions

    @IBAction func signInBtnPressed(_ sender: Any) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            //signUp
        } else {
            let alert = UIAlertController(title: "Ошибка входа", message: "Все поля должны быть заполнены", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ОК",
                                          style: UIAlertAction.Style.default,
                                                  handler: {(_: UIAlertAction!) in
                                                    //Sign out action
                
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    private func setupBackroundTouch(){
        screenView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backroudTap))
        screenView.addGestureRecognizer(tapGesture)
    }
    
    @objc func backroudTap(){
        dismissKey()
    }
    
    private func dismissKey(){
        self.view.endEditing(false)
    }
}
