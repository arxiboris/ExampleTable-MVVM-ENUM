//
//  Extension.swift
//  TableOnMVVM+ENUM
//
//  Created by Oleksandr Borysenko on 28.09.2023.
//

import UIKit

extension UITableViewCell {
    static var identifier: String {
        String(describing: Self.self)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
}
