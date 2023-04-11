//
//  CustomTableViewCell.swift
//  Geography
//
//  Created by Yogesh Tekwani on 4/10/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    let button : UIButton = {
        let b1 = UIButton()
        b1.backgroundColor = .red
        b1.tintColor = .white
        return b1
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
        button.setTitle("Hello", for: .normal)
        self.addSubview(button)
        
//        button.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: self.centerYAnchor)
//            
//        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
