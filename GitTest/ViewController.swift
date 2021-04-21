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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTestLable()
       
        // Do any additional setup after loading the view.
    }
    
    func createTestLable() {
        view.addSubview(testLable)
        testLable.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        testLable.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        testLable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        testLable.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }


}

