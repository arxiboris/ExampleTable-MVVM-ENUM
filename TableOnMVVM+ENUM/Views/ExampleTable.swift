//
//  ViewController.swift
//  TableOnMVVM+ENUM
//
//  Created by Oleksandr Borysenko on 28.09.2023.
//

import UIKit

class ExampleTable: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    private var viewModel: ExampleTableViewModelType? = ExampleTableViewModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(Cell1.nib(), forCellReuseIdentifier: Cell1.identifier)
        tableView.register(Cell2.nib(), forCellReuseIdentifier: Cell2.identifier)

    }

}

extension ExampleTable: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.cellList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch viewModel?.cellList[indexPath.row] {
        case .cell1(title: let title):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell1.identifier, for: indexPath) as? Cell1, let viewModel = viewModel else {return UITableViewCell()}
            viewModel.setLabelsCell1(title: title)
            cell.setCell(withViewModel: viewModel)
            return cell
            
        case .cell2(title: let title, subTitle: let subTitle):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell2.identifier, for: indexPath) as? Cell2, let viewModel = viewModel else {return UITableViewCell()}
            viewModel.setLabelsCell2(title: title,subTitle: subTitle)
            cell.setCell(withViewModel: viewModel)
            return cell
            
        case .none:
            return UITableViewCell()
        }
    }
}
    
extension ExampleTable: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

