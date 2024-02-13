//
//  SignInViewController.swift
//  4 month 1 lesson
//
//  Created by Apple on 10.2.2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    private var imageBoy: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "boy")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private var infoLbl: UILabel = {
        let view = UILabel()
        view.text = "Welcome Back"
        view.font = Fonts.bold.size(34)
        view.textColor = UIColor(hex: "#FFFFFF")
        view.translatesAutoresizingMaskIntoConstraints = false
        return  view
        
    }()
    
    
    private var signInLbl: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.font = Fonts.regular.size(20)
        view.textColor = UIColor(hex: "#FFFFFF", alpha: 0.7)
        view.translatesAutoresizingMaskIntoConstraints = false
        return  view
        
    }()
    
    
    private var whiteView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#FFFFFF")
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#FFFFFF")
        view.layer.cornerRadius = 40
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private var emailInfoLbl: UILabel = {
        let view = UILabel()
        view.text = "Employee Id / Email"
        view.textColor = UIColor(hex: "#A5A5A5")
        view.font = Fonts.regular.size(12)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private var emailTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = "erp1253@gmail.com"
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.borderWidth = 2
        tf.layer.cornerRadius = 16
        tf.font = Fonts.regular.size(16)
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private var passwordLbl: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.textColor = UIColor(hex: "#A5A5A5")
        view.font = Fonts.regular.size(12)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private var passwordTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 16
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.borderWidth = 2
        tf.placeholder = "1234567"
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
      
        return tf
    }()
    
    private var forgotBtn: UIButton = {
        let forBtn = UIButton(type: .system)
        forBtn.setTitle("Forgot password?", for: .normal)
        forBtn.tintColor = .systemBlue
        forBtn.translatesAutoresizingMaskIntoConstraints = false
//       forBtn.addTarget(self(), action: #selector(<#T##@objc method#>), for: .touchUpInside)
        return forBtn
    }()
    
    private var rememberLbl: UILabel = {
        let remLbl = UILabel()
        remLbl.text = "Remember Me"
        remLbl.font = .systemFont(ofSize: 18, weight: .bold)
        remLbl.textColor = .black
        remLbl.translatesAutoresizingMaskIntoConstraints = false
        return remLbl
        
    }()
    
    private var signInBtn: UIButton = {
        let signBtn = UIButton(type: .system)
        signBtn.setTitle("Sign In", for: .normal)
        signBtn.setTitleColor(.white, for: .normal)
        signBtn.backgroundColor = .systemCyan
        signBtn.layer.cornerRadius = 15
        signBtn.addTarget(nil, action: #selector(SignInTapped), for: .touchUpInside)
        signBtn.translatesAutoresizingMaskIntoConstraints = false
        return signBtn
        
    }()
    
    private var dontLbl: UILabel = {
        let dontLb = UILabel()
        dontLb.text = "Don’t have an Account?"
        dontLb.font = .systemFont(ofSize: 13, weight: .bold)
        dontLb.textColor = .black
        dontLb.translatesAutoresizingMaskIntoConstraints = false
        return dontLb
    }()

    private var UpBtn: UIButton = {
        let signBtn = UIButton(type: .system)
        signBtn.setTitle("Sign UP", for: .normal)
        signBtn.tintColor = .systemCyan
        signBtn.translatesAutoresizingMaskIntoConstraints = false
        signBtn.addTarget(nil, action: #selector(thirdTapped), for: .touchUpInside)
        return signBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        
        setupUI()
        
    }
    
    private func setupUI()  {
        view.addSubview(imageBoy)
        
        NSLayoutConstraint.activate(
            [imageBoy.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 29),
             imageBoy.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
             imageBoy.heightAnchor.constraint(equalToConstant: 256),
             imageBoy.widthAnchor.constraint(equalToConstant: 350)
    ])
        view.addSubview(infoLbl)
        NSLayoutConstraint.activate(
            [infoLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 273),
             infoLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
             infoLbl.heightAnchor.constraint(equalToConstant: 48),
             infoLbl.widthAnchor.constraint(equalToConstant: 226)
             
    ])
        
        view.addSubview(signInLbl)
        NSLayoutConstraint.activate(
            [signInLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 325),
             signInLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
             signInLbl.heightAnchor.constraint(equalToConstant: 25),
             signInLbl.widthAnchor.constraint(equalToConstant: 165)
             
    ])
        view.addSubview(bottomView)
        NSLayoutConstraint.activate(
            [bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
             bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
             bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
             bottomView.heightAnchor.constraint(equalToConstant: 400),
             bottomView.widthAnchor.constraint(equalToConstant: 360)
    ])
        bottomView.addSubview(emailInfoLbl)
        NSLayoutConstraint.activate(
            [emailInfoLbl.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 43),
            emailInfoLbl.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 23)
    ])
        bottomView.addSubview(emailTF)
        NSLayoutConstraint.activate(
            [emailTF.topAnchor.constraint(equalTo: emailInfoLbl.bottomAnchor, constant: 13),
            emailTF.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 23),
            emailTF.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -16),
             emailTF.heightAnchor.constraint(equalToConstant: 40)
    ])
        
        bottomView.addSubview(passwordLbl)
        NSLayoutConstraint.activate([
            passwordLbl.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 25),
            passwordLbl.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 23)
        ])
        bottomView.addSubview(passwordTF)
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: passwordLbl.topAnchor, constant: 25),
            passwordTF.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 23),
            passwordTF.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -16),
            passwordTF.heightAnchor.constraint(equalToConstant: 40)
        ])
        bottomView.addSubview(forgotBtn)
        NSLayoutConstraint.activate([
            forgotBtn.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 3),
            forgotBtn.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -22),
            forgotBtn.widthAnchor.constraint(equalToConstant: 150),
            forgotBtn.heightAnchor.constraint(equalToConstant: 20)
            
        ])
        
        bottomView.addSubview(rememberLbl)
        NSLayoutConstraint.activate([
            rememberLbl.topAnchor.constraint(equalTo: forgotBtn.bottomAnchor, constant: 18),
            rememberLbl.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 24)
        ])
        bottomView.addSubview(signInBtn)
        NSLayoutConstraint.activate([
            signInBtn.topAnchor.constraint(equalTo: rememberLbl.bottomAnchor, constant: 35),
            signInBtn.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 98),
            signInBtn.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -94),
            signInBtn.widthAnchor.constraint(equalToConstant: 168),
            signInBtn.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        bottomView.addSubview(dontLbl)
        NSLayoutConstraint.activate([
            dontLbl.topAnchor.constraint(equalTo: signInBtn.bottomAnchor, constant: 20),
            dontLbl.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 19),
        ])

        bottomView.addSubview(UpBtn)
        NSLayoutConstraint.activate([
            UpBtn.topAnchor.constraint(equalTo: signInBtn.bottomAnchor, constant: 20),
            UpBtn.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -150),
            UpBtn.widthAnchor.constraint(equalToConstant: 80),
            UpBtn.heightAnchor.constraint(equalToConstant: 10)
            
        ])
    }
    
    @objc func SignInTapped(_ sender: UIButton){
        chec()
    }
    
    private func chec(){
        valueValidateTF(
                        tf: emailTF,
                        label: emailInfoLbl,
                        error: "Напишите свой E-mail !!!",
                        succes: "Отлично!!!")
        
        valueValidateTF(tf: passwordTF,
                        label: passwordLbl,
                        error: "Пароль должно быть больше 6 цифры!!",
                        succes: "Отлично!!")
        
        if emailTF.text?.count ?? 0 >= 6, passwordTF.text?.count ?? 0 >= 5 {
            let vc = SuccesPageController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private func valueValidateTF(tf: UITextField, label: UILabel, error: String, succes: String) {
        if tf.text?.count ?? 0 <= 1,
            tf.text?.count ?? 0 <= 6
            {
            label.text = error
            label.textColor = .red
            tf.layer.borderWidth = 1
            tf.layer.borderColor = UIColor.red.cgColor
        }else{
            label.text = succes
            label.textColor = .green
            tf.layer.borderWidth = 1
            tf.layer.borderColor = UIColor.green.cgColor
        }
    }

    @objc func thirdTapped(_ sender: UIButton) {
        let vc = ThirdViewController()
        vc.laabel = emailTF.text
        
        
        navigationController?.pushViewController(vc, animated: true)
//        present(vc, animated: true)
    }
   
}
