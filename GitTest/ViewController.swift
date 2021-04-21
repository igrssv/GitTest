//
//  ViewController.swift
//  GitTest
//
//  Created by Игорь Сысоев on 21.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var testLable: UILabel = {
        var lable = UILabel()
        lable.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        lable.text = "test"
        lable.textAlignment = .center
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var myButton: UIButton = {
        var button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Go!"
        
        button.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTestLable()
        createButton()
        // Do any additional setup after loading the view.
    }
    
    func createTestLable() {
        view.addSubview(testLable)
        testLable.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        testLable.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        testLable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        testLable.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }

    func createButton() {
        view.addSubview(myButton)
        myButton.widthAnchor.constraint(equalTo: testLable.widthAnchor, multiplier: 1 / 3).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        myButton.topAnchor.constraint(equalTo: testLable.bottomAnchor, constant: 20).isActive = true
        myButton.centerXAnchor.constraint(equalTo: testLable.centerXAnchor).isActive = true
    }
}

