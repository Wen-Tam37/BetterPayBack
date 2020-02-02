//
//  PasswordViewController.swift
//  BetterPayBack
//
//  Created by cmStudent on 2020/02/03.
//  Copyright © 2020 19cm0140. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    //password保存用
    var nowPassword : Int = 0
    var password1 : String = ""
    var password2 : String = ""
    var password3 : String = ""
    var password4 : String = ""
    
    
    var logo = UIImageView()
    var textLabel = UILabel()
    var number1 = UIButton()
    var number2 = UIButton()
    var number3 = UIButton()
    var number4 = UIButton()
    var number5 = UIButton()
    var number6 = UIButton()
    var number7 = UIButton()
    var number8 = UIButton()
    var number9 = UIButton()
    var number0 = UIButton()
    var btnBack = UIButton()
    
    var dot1 = UIImageView()
    var dot2 = UIImageView()
    var dot3 = UIImageView()
    var dot4 = UIImageView()
    var explode1 = UIImageView()
    var explode2 = UIImageView()
    var explode3 = UIImageView()
    var explode4 = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        logo.image = UIImage(named: "newIcon")
        logo.frame = CGRect(x: view.frame.width * 0.5 - 84, y: view.frame.height * 0.1, width: 168, height: 163.8)
        view.addSubview(logo)
        
        textLabel.text = "パスワードを入力してください"
        textLabel.font = UIFont.systemFont(ofSize: 16)
        textLabel.textColor = .white
        textLabel.frame = CGRect(x: view.frame.width * 0.5 - 150, y: view.frame.height * 0.3, width: 300, height: 20)
        textLabel.textAlignment = .center
        view.addSubview(textLabel)
        
        dot1.image = UIImage(named: "dot")
        dot1.frame = CGRect(x: view.frame.width * 0.35 - 7.5, y: view.frame.height * 0.35, width: 15, height: 15)
        view.addSubview(dot1)
        dot2.image = UIImage(named: "dot")
        dot2.frame = CGRect(x: view.frame.width * 0.45 - 7.5, y: view.frame.height * 0.35, width: 15, height: 15)
        view.addSubview(dot2)
        dot3.image = UIImage(named: "dot")
        dot3.frame = CGRect(x: view.frame.width * 0.55 - 7.5, y: view.frame.height * 0.35, width: 15, height: 15)
        view.addSubview(dot3)
        dot4.image = UIImage(named: "dot")
        dot4.frame = CGRect(x: view.frame.width * 0.65 - 7.5, y: view.frame.height * 0.35, width: 15, height: 15)
        view.addSubview(dot4)
        
        explode1.image = UIImage(named: "explode")
        explode1.frame = CGRect(x: view.frame.width * 0.35 - 15, y: view.frame.height * 0.34, width: 30, height: 30)
        view.addSubview(explode1)
        explode2.image = UIImage(named: "explode")
        explode2.frame = CGRect(x: view.frame.width * 0.45 - 15, y: view.frame.height * 0.34, width: 30, height: 30)
        view.addSubview(explode2)
        explode3.image = UIImage(named: "explode")
        explode3.frame = CGRect(x: view.frame.width * 0.55 - 15, y: view.frame.height * 0.34, width: 30, height: 30)
        view.addSubview(explode3)
        explode4.image = UIImage(named: "explode")
        explode4.frame = CGRect(x: view.frame.width * 0.65 - 15, y: view.frame.height * 0.34, width: 30, height: 30)
        view.addSubview(explode4)
        
        explode1.isHidden = true
        explode2.isHidden = true
        explode3.isHidden = true
        explode4.isHidden = true
        
        number1.setImage(UIImage(named: "number1"), for: .normal)
        number1.frame = CGRect(x: view.frame.width * 0.25 - 45, y: view.frame.height * 0.4, width: 90, height: 90)
        number1.addTarget(self, action: #selector(self.number1Tapped(_:)), for: .touchUpInside)
        view.addSubview(number1)
        
        number2.setImage(UIImage(named: "number2"), for: .normal)
        number2.frame = CGRect(x: view.frame.width * 0.5 - 45, y: view.frame.height * 0.4, width: 90, height: 90)
        number2.addTarget(self, action: #selector(self.number2Tapped(_:)), for: .touchUpInside)
        view.addSubview(number2)
        
        number3.setImage(UIImage(named: "number3"), for: .normal)
        number3.frame = CGRect(x: view.frame.width * 0.75 - 45, y: view.frame.height * 0.4, width: 90, height: 90)
        number3.addTarget(self, action: #selector(self.number3Tapped(_:)), for: .touchUpInside)
        view.addSubview(number3)
        
        number4.setImage(UIImage(named: "number4"), for: .normal)
        number4.frame = CGRect(x: view.frame.width * 0.25 - 45, y: view.frame.height * 0.53, width: 90, height: 90)
        number4.addTarget(self, action: #selector(self.number4Tapped(_:)), for: .touchUpInside)
        view.addSubview(number4)
        
        number5.setImage(UIImage(named: "number5"), for: .normal)
        number5.frame = CGRect(x: view.frame.width * 0.5 - 45, y: view.frame.height * 0.53, width: 90, height: 90)
        number5.addTarget(self, action: #selector(self.number5Tapped(_:)), for: .touchUpInside)
        view.addSubview(number5)
        
        number6.setImage(UIImage(named: "number6"), for: .normal)
        number6.frame = CGRect(x: view.frame.width * 0.75 - 45, y: view.frame.height * 0.53, width: 90, height: 90)
        number6.addTarget(self, action: #selector(self.number6Tapped(_:)), for: .touchUpInside)
        view.addSubview(number6)
        
        number7.setImage(UIImage(named: "number7"), for: .normal)
        number7.frame = CGRect(x: view.frame.width * 0.25 - 45, y: view.frame.height * 0.66, width: 90, height: 90)
        number7.addTarget(self, action: #selector(self.number7Tapped(_:)), for: .touchUpInside)
        view.addSubview(number7)
        
        number8.setImage(UIImage(named: "number8"), for: .normal)
        number8.frame = CGRect(x: view.frame.width * 0.5 - 45, y: view.frame.height * 0.66, width: 90, height: 90)
        number8.addTarget(self, action: #selector(self.number8Tapped(_:)), for: .touchUpInside)
        view.addSubview(number8)
        
        number9.setImage(UIImage(named: "number9"), for: .normal)
        number9.frame = CGRect(x: view.frame.width * 0.75 - 45, y: view.frame.height * 0.66, width: 90, height: 90)
        number9.addTarget(self, action: #selector(self.number9Tapped(_:)), for: .touchUpInside)
        view.addSubview(number9)
        
        number0.setImage(UIImage(named: "number0"), for: .normal)
        number0.frame = CGRect(x: view.frame.width * 0.5 - 45, y: view.frame.height * 0.79, width: 90, height: 90)
        number0.addTarget(self, action: #selector(self.number0Tapped(_:)), for: .touchUpInside)
        view.addSubview(number0)
        
        btnBack.setImage(UIImage(named: "btnBack"), for: .normal)
        btnBack.frame = CGRect(x: view.frame.width * 0.75 - 45, y: view.frame.height * 0.79, width: 90, height: 90)
        btnBack.addTarget(self, action: #selector(self.btnBackTapped(_:)), for: .touchUpInside)
        view.addSubview(btnBack)
        
        
        
    }
    
    
    @objc func number1Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("1")
            nowPasswordCalculate(number: "1")
            print("nowPassword:\(nowPassword)")
        }
        
    }
    @objc func number2Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("2")
            nowPasswordCalculate(number: "2")
            print("nowPassword:\(nowPassword)")
        }
        
    }
    @objc func number3Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("3")
            nowPasswordCalculate(number: "3")
            print("nowPassword:\(nowPassword)")
        }
        
    }
    @objc func number4Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("4")
            nowPasswordCalculate(number: "4")
            print("nowPassword:\(nowPassword)")
        }
        
    }
    @objc func number5Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("5")
            nowPasswordCalculate(number: "5")
            print("nowPassword:\(nowPassword)")
        }
        
    }
    @objc func number6Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("6")
            nowPasswordCalculate(number: "6")
            print("nowPassword:\(nowPassword)")
        }
        
    }
    @objc func number7Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("7")
            nowPasswordCalculate(number: "7")
        }
        print("nowPassword:\(nowPassword)")
    }
    
    @objc func number8Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("8")
            nowPasswordCalculate(number: "8")
        }
        print("nowPassword:\(nowPassword)")
        
    }
    @objc func number9Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("9")
            nowPasswordCalculate(number: "9")
        }
        print("nowPassword:\(nowPassword)")
        
        
    }
    @objc func number0Tapped(_ sender:Any){
        if nowPassword < 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword >= 4 {
            nowPassword = 4
            print("nowPassword:\(nowPassword)")
        }else{
            nowPassword += 1
            print("0")
            nowPasswordCalculate(number: "0")
        }
        print("nowPassword:\(nowPassword)")
        
    }
    @objc func btnBackTapped(_ sender:Any){
        if nowPassword == 0 {
            nowPassword = 0
            print("nowPassword:\(nowPassword)")
        }else if nowPassword < 4 {
            nowPassword -= 1
            print("x")
            nowPasswordCalculate(number: "")
            
        }else if nowPassword == 4 {
            nowPasswordCalculate(number: "")
        }
        print("nowPassword:\(nowPassword)")
        
        
    }
    
    func nowPasswordCalculate(number: String){
        switch nowPassword {
        case 0:
            dot1.isHidden = false
            explode1.isHidden = true
            dot2.isHidden = false
            explode2.isHidden = true
            dot3.isHidden = false
            explode3.isHidden = true
            dot4.isHidden = false
            explode4.isHidden = true
            
            password1 = ""
            password2 = ""
            password3 = ""
            password4 = ""
            
            let fullPassword = password1 + password2 + password3 + password4
            print("fullPassword:\(fullPassword)")
            
        case 1:
            dot1.isHidden = true
            explode1.isHidden = false
            dot2.isHidden = false
            explode2.isHidden = true
            dot3.isHidden = false
            explode3.isHidden = true
            dot4.isHidden = false
            explode4.isHidden = true
            
            password1 = "\(number)"
            password2 = ""
            password3 = ""
            password4 = ""
            
            let fullPassword = password1 + password2 + password3 + password4
            print("fullPassword:\(fullPassword)")
            
        case 2:
            dot1.isHidden = true
            explode1.isHidden = false
            dot2.isHidden = true
            explode2.isHidden = false
            dot3.isHidden = false
            explode3.isHidden = true
            dot4.isHidden = false
            explode4.isHidden = true
            
            //password1 = ""
            password2 = "\(number)"
            password3 = ""
            password4 = ""
            
            let fullPassword = password1 + password2 + password3 + password4
            print("fullPassword:\(fullPassword)")
            
        case 3:
            dot1.isHidden = true
            explode1.isHidden = false
            dot2.isHidden = true
            explode2.isHidden = false
            dot3.isHidden = true
            explode3.isHidden = false
            dot4.isHidden = false
            explode4.isHidden = true
            
            //password1 = ""
            //password2 = ""
            password3 = "\(number)"
            password4 = ""
            
            let fullPassword = password1 + password2 + password3 + password4
            print("fullPassword:\(fullPassword)")
            
        case 4:
            dot1.isHidden = true
            explode1.isHidden = false
            dot2.isHidden = true
            explode2.isHidden = false
            dot3.isHidden = true
            explode3.isHidden = false
            dot4.isHidden = true
            explode4.isHidden = false
            
            //password1 = ""
            //password2 = ""
            //password3 = ""
            password4 = "\(number)"
            
            
            let fullPassword = password1 + password2 + password3 + password4
            print("fullPassword:\(fullPassword)")
            nowPassword -= 1
            
        default :
            break
        }
    }
    
    func isItRightPassword(){
        
    }
    
    

}
