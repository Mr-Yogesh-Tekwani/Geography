//
//  ThirdViewController.swift
//  Geography
//
//  Created by Yogesh Tekwani on 4/10/23.
//

import UIKit

class ThirdViewController: UIViewController {

    let mainstack : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        return stack
    }()
    
    let hstack : UIStackView = {
       let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        return stack
    }()
    
    let button : UIButton = {
        let b1 = UIButton()
        b1.setTitle("Back to MainVC", for: .normal)
        b1.backgroundColor = .systemBlue
        b1.tintColor = .white
        return b1
    }()
    
    let tableView : UITableView = {
        
        let table =  UITableView()
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
//
//        self.view.addSubview(button)
//
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
//        ])
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        mainstack.addArrangedSubview(button)
        mainstack.addArrangedSubview(tableView)
        
        self.view.addSubview(mainstack)
        
        mainstack.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            mainstack.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            mainstack.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            mainstack.topAnchor.constraint(equalTo: safeArea.topAnchor),
            mainstack.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ])
        
    }


    @objc func buttonPressed(){
        let secondVC = ViewController()
        secondVC.modalPresentationStyle = .fullScreen
        self.present(secondVC, animated: true)
    }
    
}

