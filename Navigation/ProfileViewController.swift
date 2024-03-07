//
//  ProfileViewController.swift
//  Navigation
//
//  Created by nikita on 14.02.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()
    let appearance = UINavigationBarAppearance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    override func viewWillLayoutSubviews() {
        view.backgroundColor = .lightGray
        title = "Profile"
        profileHeaderView.frame = view.frame
        view.addSubview(profileHeaderView)
    }
}
