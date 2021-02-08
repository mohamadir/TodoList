//
//  PersonView.swift
//  Blink
//
//  Created by Muhammad Ibrahim on 07/02/2021.
//  Copyright © 2021 Muhammad Ibrahem. All rights reserved.
//

import Foundation
public protocol TodosView: BaseView{
    func onSuccessEventData(data: TodosResponse)
}
