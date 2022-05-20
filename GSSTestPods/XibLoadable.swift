//
//  XibLoadable.swift
//  GSSTool
//
//  Created by Trista on 2022/5/18.
//

import UIKit

protocol XibLoadable {}

extension XibLoadable where Self : UIView {
    static func loadFromNib(_ nibName: String = String(describing: Self.self),atIndex index: Int = 0) -> Self {
        return Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?[index] as! Self
    }
}
