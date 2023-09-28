//
//  ExampleTableViewModel.swift
//  TableOnMVVM+ENUM
//
//  Created by Oleksandr Borysenko on 28.09.2023.
//

import UIKit

class ExampleTableViewModel: ExampleTableViewModelType {

    var cellList: [Cells] = [.cell1(title: "Тайтл1 для ячейки типу 1"),
                                .cell2(title: "Тайтл2 для ячейки  типу 2", subTitle: "СабТайтл2 для ячейки  типу 2"),
                                .cell1(title: "Тайтл3 для ячейки типу 1"),
                                .cell2(title: "Тайтл4 для ячейки  типу 2", subTitle: "СабТайтл4 для ячейки  типу 2")]
    var cellTitle: String?
    var cellSubTitle: String?
    
    func setLabelsCell1(title: String) {
        cellTitle = title
    }
    
    func setLabelsCell2(title: String, subTitle: String) {
        cellTitle = title
        cellSubTitle = subTitle
    }
}

