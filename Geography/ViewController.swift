//
//  ViewController.swift
//  Geography
//
//  Created by Yogesh Tekwani on 4/10/23.
//

import UIKit

class ViewController: UIViewController {

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
        b1.backgroundColor = .systemBlue
        b1.tintColor = .white
        return b1
    }()
    
    let buttonTV : UIButton = {
        let b1 = UIButton()
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
        // Do any additional setup after loading the view.
        button.setTitle("Goto SecondVC", for: .normal)
        buttonTV.setTitle("Goto ThirdVC", for: .normal)
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        buttonTV.addTarget(self, action: #selector(gotoThird), for: .touchUpInside)
        
        
        mainstack.addArrangedSubview(button)
        mainstack.addArrangedSubview(buttonTV)
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
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .automatic
        self.present(secondVC, animated: true)
    }
    
    @objc func gotoThird(){
        let secondVC = ThirdViewController()
        secondVC.modalPresentationStyle = .fullScreen
        self.present(secondVC, animated: true)
    }
    
}

