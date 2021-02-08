//
//  TodoUIViewController.swift
//  Blink
//
//  Created by Muhammad Ibrahim on 08/02/2021.
//  Copyright © 2021 Muhammad Ibrahem. All rights reserved.
//

import UIKit

class TodoUIViewController: UIViewController {
    
    private var viewModel: TodoViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.bindTodoViewModelToController = {
            self.updateData()
        }
        
        // Do any additional setup after loading the view.
    }
    
    init(id: Int) {
        viewModel = TodoViewModel(id: id)
        
        super.init(nibName: nil, bundle: nil)
    }
    
    
    
    func updateData(){
        print(viewModel.todo.userId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
