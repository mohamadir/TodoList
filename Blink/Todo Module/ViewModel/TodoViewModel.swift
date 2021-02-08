//
//  TodoViewModel.swift
//  Blink
//
//  Created by Muhammad Ibrahim on 08/02/2021.
//  Copyright © 2021 Muhammad Ibrahem. All rights reserved.
//

import Foundation

class TodoViewModel : NSObject{
    
    private var apiService: ApiService!
    private var id: Int? = nil
    private(set) var todo : Todo! {
           didSet {
               self.bindTodoViewModelToController()
           }
       }
    
    
    var bindTodoViewModelToController : (() -> ()) = {}

    

     init(id: Int? = nil) {
        super.init()
        self.apiService = ApiService()
        getDataAndBind(id: id)
        
    }
    
    func getDataAndBind(id : Int?){
        guard id != nil else { return }
        apiService.getTodoRequest(id: id!) { [weak self] (todo) in
            guard let self = self else { return }
            self.todo = todo
            
        }
    }
    
    
}
