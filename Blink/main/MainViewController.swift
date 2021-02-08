//
//  MainViewController.swift
//  Blink
//
//  Created by Muhammad Ibrahim on 08/02/2021.
//  Copyright © 2021 Muhammad Ibrahem. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToTodo(_ sender: Any) {
        self.navigationController?.pushViewController(TodoUIViewController(id: 150), animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
