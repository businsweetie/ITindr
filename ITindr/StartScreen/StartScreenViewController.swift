//
//  StartScreenViewController.swift
//  ITindr
//
//  Created by user218932 on 4/5/22.
//

import UIKit

class StartScreenViewController: UIViewController {

    //MARK: -IBOutlets
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    
    static func UIColorFromRGB(_ rgbValue: Int) -> UIColor {
        return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0, green: ((CGFloat)((rgbValue & 0x00FF00) >> 8))/255.0, blue: ((CGFloat)((rgbValue & 0x0000FF)))/255.0, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signUpBtn.buttonSettings(colors: [StartScreenViewController.UIColorFromRGB(0xFA13AB).cgColor,StartScreenViewController.UIColorFromRGB(0xE813FA).cgColor], titleColor: .white)
        
        self.signInBtn.buttonSettings(colors: [UIColor.white.cgColor, UIColor.white.cgColor], titleColor: UIColor(named: "MyFirstColor")!)
    }
    
    //MARK: -IBActions

}

extension UIButton {
    func buttonSettings(colors: [CGColor], titleColor: UIColor) {
        self.backgroundColor = nil
        self.layoutIfNeeded()
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = 28

        gradientLayer.shadowColor = UIColor.black.cgColor
        gradientLayer.shadowOffset = CGSize(width: 0, height: 4)
        gradientLayer.shadowRadius = 24.0
        gradientLayer.shadowOpacity = 0.1
        gradientLayer.masksToBounds = false

        self.layer.insertSublayer(gradientLayer, at: 0)
        self.contentVerticalAlignment = .center
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .selected)
        self.titleLabel?.textColor = titleColor
    }
}

