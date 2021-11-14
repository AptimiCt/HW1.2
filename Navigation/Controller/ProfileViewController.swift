//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Александр Востриков on 14.11.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let profileNibName = String(describing: ProfileView.self)
        
        if let profileView = Bundle.main.loadNibNamed(profileNibName, owner: nil, options: nil)?.first as? ProfileView {
            profileView.frame = CGRect(x: 16, y: 44, width: view.bounds.width - 32, height: profileView.bounds.height)
            
            profileView.nameLabel.backgroundColor = .orange
            profileView.birthDateLabel.backgroundColor = .green
            profileView.cityLabel.backgroundColor = .purple
        
            view.addSubview(profileView)
        }
    }
    

}
