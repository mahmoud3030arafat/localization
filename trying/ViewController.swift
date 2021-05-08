//
//  ViewController.swift
//  trying
//
//  Created by Mahmoud on 5/5/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    

    var dataTask : URLSessionTask?
    override func viewDidLoad() {
        super.viewDidLoad()
        email.text?.localized()
        password.text?.localized()
         
        
        let button : UIButton = {
            let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 44))
            btn.setTitle("EN", for: .normal)
            btn.contentHorizontalAlignment = .left
            btn.setTitleColor(.blue, for: .normal)
            btn.addTarget(self, action: #selector(pressed), for: .touchUpInside)
            return btn
            
        }()
        
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        
        
        
        


    }
    @objc func pressed(){
        
       
    }
}

extension String{
func localized()->String{
    
    return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
}
    
}

