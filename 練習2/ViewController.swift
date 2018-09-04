//
//  ViewController.swift
//  練習2
//
//  Created by 岸下和樹 on 2018/09/01.
//  Copyright © 2018年 岸下和樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = UIImage(named: "写真ホーム.jpg")
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: 400, height: 100))
        label.text = "Let's..."
        label.textColor = .black
        label.font = UIFont.italicSystemFont(ofSize: 100)
        label.textAlignment = .center
        label.center.x = view.center.x
        label.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        view.addSubview(label)
        
        
        let loginButton = UIButton(frame: .init(x: 30, y: view.frame.height - 150, width: view.frame.width - 60, height: 50))
        loginButton.setTitle("LOG IN", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.cornerRadius = 4
        loginButton.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        view.addSubview(loginButton)
        
        let signupButton = UIButton(frame: loginButton.frame)
        signupButton.frame.origin.y = loginButton.frame.minY - 60
        signupButton.setTitle("SIGN UP", for: .normal)
        signupButton.setTitleColor(.white, for: .normal)
        signupButton.backgroundColor = UIColor(red: 0, green: 168.0/255, blue: 107.0/255, alpha: 1)
        signupButton.layer.cornerRadius = 4
        signupButton.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        view.addSubview(signupButton)
    }

}
