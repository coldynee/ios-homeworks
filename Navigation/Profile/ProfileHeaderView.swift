//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by nikita on 07.03.2024.
//

import SwiftUI

class ProfileHeaderView: UIView {
    
    let profileImage: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x:16.0, y:136.0, width: 100, height: 100))
        imageView.image = UIImage(named: "ProfileMain")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.layer.contentsGravity = .resizeAspect
        imageView.layer.cornerRadius = 60
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3.0
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 3
        return imageView
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Cool Cat"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 18.0)
        return label
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Waiting for something"
        label.textColor = .gray
        label.font = UIFont(name: "System", size: 14)
        return label
    }()
    
    let actionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()

    }
    
    required init?(coder: NSLayoutConstraint) {
        super.init(frame: CGRect())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func buttonTap() {
        print("Status")
    }
   
    func setupLayout(){
       addSubview(actionButton)
       addSubview(textLabel)
       addSubview(statusLabel)
       addSubview(profileImage)
        
   
      
       
        
        NSLayoutConstraint.activate([
            actionButton.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 16),
            actionButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            actionButton.heightAnchor.constraint(equalToConstant:50),
            actionButton.widthAnchor.constraint(equalToConstant: 360),
            actionButton.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 34),
        
            
            
            textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 129),
            textLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 16 ),
            textLabel.heightAnchor.constraint(equalToConstant: 27),
            textLabel.widthAnchor.constraint(equalToConstant: 100),
            
            profileImage.topAnchor.constraint(equalTo: topAnchor , constant: 112),
            profileImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            profileImage.heightAnchor.constraint(equalToConstant: 120),
            profileImage.widthAnchor.constraint(equalToConstant: 120),
            
            //textView.bottomAnchor.constraint(equalTo: actioButton.topAnchor, constant: 34),
            statusLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 16),
            statusLabel.heightAnchor.constraint(equalToConstant: 14),
            statusLabel.widthAnchor.constraint(equalToConstant: 200)
        
        ])
    }
}
