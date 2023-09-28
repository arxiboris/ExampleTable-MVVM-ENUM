//
//  Cell2.swift
//  TableOnMVVM+ENUM
//
//  Created by Oleksandr Borysenko on 28.09.2023.
//

import UIKit

class Cell2: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension Cell2 {

public func setCell(withViewModel viewModel: ExampleTableViewModelType) {
    title.text = viewModel.cellTitle
    subTitle.text = viewModel.cellSubTitle
}

}



