//
//  NewPasswordViewController.swift
//  4 month 1 lesson
//
//  Created by Apple on 15.2.2024.
//

import UIKit

class NewPasswordViewController: UIViewController {
    
    
    var username: String?
    var Number: String?
    private let telnumber = MakerView().makerLabel(
        size: 30,
        weight: .bold)
    private let userNameLbl = MakerView().makerLabel(
        text: "Temirlan",
        size: 30,
        weight: .bold)

    private let banerView: UIView = {
        let baner = UIView()
        baner.backgroundColor = .white
        baner.layer.cornerRadius = 40
        baner.translatesAutoresizingMaskIntoConstraints = false
        return baner
    }()
    private let passwordLbl = MakerView().makerLabel(
    text: "New password"
    )
    private let newPassword = MakerView().makerTextField(
    placeholder: "123212"
    )
    private let repietPasswordLbl = MakerView().makerLabel(
    text: "Repiet password"
    )
    private let repietPassword = MakerView().makerTextField(
    placeholder: "123212"
    )
    
    private var submitBtn: UIButton = {
        let signBtn = UIButton(type: .system)
        signBtn.setTitle("Submit", for: .normal)
        signBtn.setTitleColor(.white, for: .normal)
        signBtn.backgroundColor = .systemCyan
        signBtn.layer.cornerRadius = 15
        signBtn.addTarget(nil, action: #selector(submitBtnTapped), for: .touchUpInside)
        signBtn.translatesAutoresizingMaskIntoConstraints = false
        return signBtn
        
    }()
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        tranferWords()
        topView()
        bottomBanerView()
        textFields()
        submitBoton()
        
        
    }
    
    
    
    private func tranferWords(){
        if let user = username {
            userNameLbl.text = user
        }
        if let tel = Number {
            telnumber.text = tel
        }
    }
    
    
    
    
    private func topView(){
        view.addSubview(userNameLbl)
        NSLayoutConstraint.activate([
            userNameLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 246),
            userNameLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            userNameLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            userNameLbl.heightAnchor.constraint(equalToConstant: 45),
            userNameLbl.widthAnchor.constraint(equalToConstant: 279)
            
        ])
        view.addSubview(telnumber)
        NSLayoutConstraint.activate([
            telnumber.topAnchor.constraint(equalTo: view.topAnchor, constant: 190),
            telnumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40)
          
            
        ])
    }
    
    
    
    private func bottomBanerView (){
        view.addSubview(banerView)
        NSLayoutConstraint.activate([
            banerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 344),
            banerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            banerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            banerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        
    }
    private func textFields(){
        banerView.addSubview(passwordLbl)
        NSLayoutConstraint.activate([
            passwordLbl.topAnchor.constraint(equalTo: banerView.topAnchor, constant: 55),
            passwordLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(newPassword)
        NSLayoutConstraint.activate([
            newPassword.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 13),
            newPassword.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            newPassword.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            newPassword.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
        banerView.addSubview(repietPasswordLbl)
        NSLayoutConstraint.activate([
            repietPasswordLbl.topAnchor.constraint(equalTo: newPassword.topAnchor, constant: 55),
            repietPasswordLbl.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23)
        ])
       
        banerView.addSubview(repietPassword)
        NSLayoutConstraint.activate([
            repietPassword.topAnchor.constraint(equalTo: repietPasswordLbl.bottomAnchor, constant: 13),
            repietPassword.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 23),
            repietPassword.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -16),
            repietPassword.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    
    
    private func submitBoton() {
        banerView.addSubview(submitBtn)
        NSLayoutConstraint.activate([
            submitBtn.topAnchor.constraint(equalTo: repietPassword.bottomAnchor, constant: 35),
            submitBtn.leadingAnchor.constraint(equalTo: banerView.leadingAnchor, constant: 98),
            submitBtn.trailingAnchor.constraint(equalTo: banerView.trailingAnchor, constant: -94),
            submitBtn.widthAnchor.constraint(equalToConstant: 168),
            submitBtn.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    @objc func submitBtnTapped(_sender: UIButton){
        
        valueValidateTF(
            tf: newPassword,
            label: passwordLbl,
            error: "Пароль должеень быть похож",
            succes: "Отлично!!!")
        
        valueValidateTF(
            tf: repietPassword,
            label: repietPasswordLbl,
            error: "Пароль должеень быть похож",
            succes: "Отлично!!!")
        
        if newPassword.text?.count ?? 0 >= 6,
           repietPassword.text?.count ?? 0 >= 6,
           newPassword.text == repietPassword.text {
            if let navigationController = self.navigationController {
                navigationController.popToRootViewController(animated: true)
            }
        }


        }
    }

    private func valueValidateTF(tf: UITextField, label: UILabel, error: String, succes: String) {
        if tf.text?.count ?? 0 <= 6,
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

