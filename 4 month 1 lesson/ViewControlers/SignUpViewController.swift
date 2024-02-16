//
//  SignUpViewController.swift
//  4 month 1 lesson
//
//  Created by Apple on 14.2.2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let imageChild: UIImageView = {
        let boy = UIImageView()
        boy.image = UIImage(named: "boy")
        boy.translatesAutoresizingMaskIntoConstraints = false
        return boy
        
    }()
    
    private let banerView: UIView = {
        let baner = UIView()
        baner.backgroundColor = .white
        baner.layer.cornerRadius = 40
        baner.translatesAutoresizingMaskIntoConstraints = false
        return baner
        
    }()
    private let labelTf = MakerView().makerLabel(
        text: "Full Name"
    )
    
    private let nameTextFeild = MakerView().makerTextField(
    placeholder: "Tima"
    )
    
    private let numberLbl = MakerView().makerLabel(
    text: "Mobile Number"
    )
    
    private let numberTf = MakerView().makerTextField(
    placeholder: "0502030422"
    )
    
    private let emailLbl = MakerView().makerLabel(
    text: "E-Mail"
    )
    
    private let emailTf = MakerView().makerTextField(
    placeholder: "omurbekovv_T@gmail.com"
    )
    
    private let userNameLbl = MakerView().makerLabel(
    text: "User Name"
    )
    
    private let userNameTf = MakerView().makerTextField(
    placeholder: "omurbekov_t"
    )
    
    private let passwordLbl = MakerView().makerLabel(
    text: "Password"
    )
    
    private let passwordTf = MakerView().makerTextField(
    placeholder: "123214"
    )
    private let confirmPasswordLbl = MakerView().makerLabel(
    text: "Confirm Password"
    )
    
    private let confirmPasswordTf = MakerView().makerTextField(
    placeholder: "123214"
    )
    
    private let infoLbl = MakerView().makerLabel(
    text: "Already have an Account?",
    weight: .semibold
    )
    
    
    private var signUpBtn: UIButton = {
        let signBtn = UIButton(type: .system)
        signBtn.setTitle("Sign Up", for: .normal)
        signBtn.setTitleColor(.white, for: .normal)
        signBtn.backgroundColor = .systemCyan
        signBtn.layer.cornerRadius = 15
        signBtn.addTarget(nil, action: #selector(signUpTapped), for: .touchUpInside)
        signBtn.translatesAutoresizingMaskIntoConstraints = false
        return signBtn
        
    }()
    
    private var UpBtn: UIButton = {
        let signBtn = UIButton(type: .system)
        signBtn.setTitle("Sign In", for: .normal)
        signBtn.tintColor = .systemCyan
        signBtn.translatesAutoresizingMaskIntoConstraints = false
//        signBtn.addTarget(nil, action: #selector(thirdTapped), for: .touchUpInside)
        return signBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        ImageBoy()
        bannerUi()
        SignUpButton()
        infoAccount()
    }
   
    
    private func ImageBoy() {
        view.addSubview(imageChild)
        NSLayoutConstraint.activate([
            imageChild.topAnchor.constraint(equalTo: view.topAnchor, constant: 29),
            imageChild.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            imageChild.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
            imageChild.heightAnchor.constraint(equalToConstant: 261),
            imageChild.widthAnchor.constraint(equalToConstant: 344)
        ])
    }
   
    
    private func bannerUi() {
        
        view.addSubview(banerView)
        NSLayoutConstraint.activate([
            banerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 192),
            banerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            banerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            banerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
       
        banerView.addSubview(labelTf)
        NSLayoutConstraint.activate([
            labelTf.topAnchor.constraint(equalTo: banerView.topAnchor, constant: 25),
            labelTf.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(nameTextFeild)
        NSLayoutConstraint.activate([
            nameTextFeild.topAnchor.constraint(equalTo: labelTf.bottomAnchor, constant: 13),
            nameTextFeild.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            nameTextFeild.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            nameTextFeild.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        banerView.addSubview(numberLbl)
        NSLayoutConstraint.activate([
            numberLbl.topAnchor.constraint(equalTo: nameTextFeild.topAnchor, constant: 55),
            numberLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(numberTf)
        NSLayoutConstraint.activate([
            numberTf.topAnchor.constraint(equalTo: numberLbl.bottomAnchor, constant: 13),
            numberTf.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            numberTf.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            numberTf.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        banerView.addSubview(emailLbl)
        NSLayoutConstraint.activate([
            emailLbl.topAnchor.constraint(equalTo: numberTf.topAnchor, constant: 55),
            emailLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(emailTf)
        NSLayoutConstraint.activate([
            emailTf.topAnchor.constraint(equalTo: emailLbl.bottomAnchor, constant: 13),
            emailTf.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            emailTf.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            emailTf.heightAnchor.constraint(equalToConstant: 40)
        ])
       
        banerView.addSubview(userNameLbl)
        NSLayoutConstraint.activate([
            userNameLbl.topAnchor.constraint(equalTo: emailTf.topAnchor, constant: 55),
            userNameLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(userNameTf)
        NSLayoutConstraint.activate([
            userNameTf.topAnchor.constraint(equalTo: userNameLbl.bottomAnchor, constant: 13),
            userNameTf.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            userNameTf.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            userNameTf.heightAnchor.constraint(equalToConstant: 40)
        ])
        banerView.addSubview(passwordLbl)
        NSLayoutConstraint.activate([
            passwordLbl.topAnchor.constraint(equalTo: userNameTf.topAnchor, constant: 55),
            passwordLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(passwordTf)
        NSLayoutConstraint.activate([
            passwordTf.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 13),
            passwordTf.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            passwordTf.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            passwordTf.heightAnchor.constraint(equalToConstant: 40)
        ])
        banerView.addSubview(confirmPasswordLbl)
        NSLayoutConstraint.activate([
            confirmPasswordLbl.topAnchor.constraint(equalTo: passwordTf.topAnchor, constant: 55),
            confirmPasswordLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(confirmPasswordTf)
        NSLayoutConstraint.activate([
            confirmPasswordTf.topAnchor.constraint(equalTo: confirmPasswordLbl.bottomAnchor, constant: 13),
            confirmPasswordTf.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            confirmPasswordTf.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            confirmPasswordTf.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    
    private func SignUpButton() {
        banerView.addSubview(signUpBtn)
        NSLayoutConstraint.activate([
            signUpBtn.topAnchor.constraint(equalTo: confirmPasswordTf.bottomAnchor, constant: 35),
            signUpBtn.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 98),
            signUpBtn.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -94),
            signUpBtn.widthAnchor.constraint(equalToConstant: 168),
            signUpBtn.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
   
    
    private func infoAccount() {
        banerView.addSubview(infoLbl)
        NSLayoutConstraint.activate([
            infoLbl.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 20),
            infoLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 19),
        ])
        banerView.addSubview(UpBtn)
        NSLayoutConstraint.activate([
            UpBtn.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 20),
            UpBtn.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -150),
            UpBtn.widthAnchor.constraint(equalToConstant: 80),
            UpBtn.heightAnchor.constraint(equalToConstant: 10)
            
        ])
    }
    
    @objc func signUpTapped(_ sender: UIButton){
        chec()
        
    }
    
    private func chec(){
        valueValidateTF(
            tf: nameTextFeild,
            label: labelTf,
            error: "Напишите свой Имя !!!",
            succes: "Отлично!!!")
        
        valueValidateTF(
            tf: emailTf,
            label: emailLbl,
            error: "Напишите свой E-mail !!!",
            succes: "Отлично!!!")
        
        valueValidateTF(
            tf: userNameTf,
            label: userNameLbl,
            error: "Напишите свой Логин",
            succes: "Отлично!!!")
        
        valueValidateTF(
            tf: passwordTf,
            label: passwordLbl,
            error: "Пароль должеень быть похож!!!",
            succes: "Отлично!!!")
        
        valueValidateTF(
            tf: confirmPasswordTf,
            label: confirmPasswordLbl,
            error: "Пароль должеень быть похож",
            succes: "Отлично!!!")
        
        if nameTextFeild.text?.count ?? 0 >= 3,
           emailTf.text?.count ?? 0 >= 7,
           userNameTf.text?.count ?? 0 >= 5,
           passwordTf.text?.count == confirmPasswordTf.text?.count   {
            
            let vc = NewPasswordViewController()
            vc.username = userNameTf.text
            vc.Number = numberTf.text
            navigationController?.pushViewController(vc, animated: true)
            
        }
            
        
    }
    private func valueValidateTF(tf: UITextField, label: UILabel, error: String, succes: String) {
        if tf.text?.count ?? 0 <= 5,
//           tf.text?.count ?? 0 <= 7,
//           tf.text?.count ?? 0 <= 5,
//           tf.text?.count ?? 0 <= 6,
           tf.text == tf.text {
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
}
