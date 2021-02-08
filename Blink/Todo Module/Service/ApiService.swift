//
//  ApiService.swift
//  Blink
//
//  Created by Muhammad Ibrahim on 08/02/2021.
//  Copyright © 2021 Muhammad Ibrahem. All rights reserved.
//


import Foundation

class ApiService  {
    
    private let sourcesURL = "https://jsonplaceholder.typicode.com/todos/"
    
    func getTodoRequest(id: Int, completion : @escaping (Todo) -> ()){
        URLSession.shared.dataTask(with:  URL(string: "\(sourcesURL)\(id)")!) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode(Todo.self, from: data)
                    completion(empData)
            }
        }.resume()
    }
}
