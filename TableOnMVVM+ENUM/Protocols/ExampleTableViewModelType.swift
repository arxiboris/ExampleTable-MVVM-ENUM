//
//  ExampleTableViewModelTyoe.swift
//  TableOnMVVM+ENUM
//
//  Created by Oleksandr Borysenko on 28.09.2023.
//

import UIKit

protocol ExampleTableViewModelType {
    var  cellList: [Cells] {get}
    var cellTitle: String? {get}
    var cellSubTitle: String? {get}
    
    func setLabelsCell1(title: String)
    func setLabelsCell2(title: String, subTitle: String)
}
