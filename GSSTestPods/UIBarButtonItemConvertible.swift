//
//  UIBarButtonItemConvertible.swift
//  GSSTool
//
//  Created by Trista on 2022/5/18.
//

import Foundation
import UIKit

protocol UIBarButtonItemConvertible {
    func toBarbuttonItem() -> UIBarButtonItem
}

extension UIImage : UIBarButtonItemConvertible {
    func toBarbuttonItem() -> UIBarButtonItem {
      return UIBarButtonItem(image: self, style: .plain, target: nil, action: nil)
    }
}

extension String : UIBarButtonItemConvertible  {
    func toBarbuttonItem() -> UIBarButtonItem {
        return UIBarButtonItem(title: self, style: .plain, target: nil, action: nil)
    }
}

extension UIView : UIBarButtonItemConvertible {
    func toBarbuttonItem() -> UIBarButtonItem {
        return UIBarButtonItem.init(customView: self)
    }
}

extension UIBarButtonItem : UIBarButtonItemConvertible {
    func toBarbuttonItem() -> UIBarButtonItem {
        return self
    }
}
