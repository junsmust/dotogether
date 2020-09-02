//
//  ViewController.swift
//  dotogether
//
//  Created by 임명준 on 2020/08/24.
//  Copyright © 2020 임명준. All rights reserved.
//

import UIKit
import SnapKit
import Then

 class ViewController: UIViewController {

    private let mainIV: UIImageView = UIImageView(image: #imageLiteral(resourceName: "done"))
    private let loginInputs: UIStackView = UIStackView().then({
        $0.distribution                  = .fillEqually
        $0.spacing                       = 5
        $0.axis                          = .vertical
        $0.alignment                     = .fill
    })
    private let id: UITextField          = UITextField().then({
        $0.setLeftPaddinng(15)
        $0.setHintAndHintColor("ID를 입력해주세요", color: .lightGray)
        $0.textColor                     = .black
        $0.backgroundColor               = .white
        $0.layer.cornerRadius            = 4
        $0.layer.borderColor             = UIColor.black.cgColor
    })
    private let pw: UITextField          = UITextField().then({
        $0.setLeftPaddinng(15)
        $0.setHintAndHintColor("PW를 입력해주세요", color: .lightGray)
        $0.textColor                     = .black
        $0.backgroundColor               = .white
        $0.layer.cornerRadius            = 4
        $0.layer.borderColor             = UIColor.black.cgColor
    })
    
    private let login: UIButton          = UIButton().then({
        $0.backgroundColor               = .white
        $0.setTitleColor(.black, for: .normal)
        $0.setTitle("로그인", for: .normal)
        $0.titleLabel?.font               = UIFont.boldSystemFont(ofSize: 15)
        $0.layer.cornerRadius            = 4
        $0.layer.borderColor             = UIColor.black.cgColor
    })
    
    private let appName: UILabel         = UILabel().then({
        $0.textColor                     = .white
        $0.text                          = "DUTY"
        $0.textAlignment                 = .center
        $0.font                          = UIFont.boldSystemFont(ofSize: 15)
    })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(loginInputs)
        setupLoginInputView()
        
        view.addSubview(mainIV)
        setupMainIv()
        
        view.addSubview(appName)
        setupAppName()
        
        view.addSubview(login)
        setupLogin()
    }
    
    private func setupLoginInputView() {
        loginInputs.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(100)
        }
        
        loginInputs.addArrangedSubview(id)
        loginInputs.addArrangedSubview(pw)
    }
    
    private func setupMainIv() {
        mainIV.snp.makeConstraints { (make) in
            make.bottom.equalTo(loginInputs.snp.top).offset(-60)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(60)
        }
    }
    
    private func setupLogin() {
        login.snp.makeConstraints { (make) in
            make.top.equalTo(loginInputs.snp.bottom).offset(30)
            make.leading.equalTo(40)
            make.trailing.equalTo(-40)
            make.height.equalTo(40)
        }
    }
    
    private func setupAppName() {
        appName.snp.makeConstraints { (make) in
            make.top.equalTo(mainIV.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
    }
    
}

 
