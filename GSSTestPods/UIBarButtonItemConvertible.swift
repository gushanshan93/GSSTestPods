//
//  UIBarButtonItemConvertible.swift
//  GSSTool
//
//  Created by Trista on 2022/5/18.
//

import Foundation
import UIKit

public protocol UIBarButtonItemConvertible {
    func toBarbuttonItem() -> UIBarButtonItem
}

extension UIImage : UIBarButtonItemConvertible {
    public  func toBarbuttonItem() -> UIBarButtonItem {
      return UIBarButtonItem(image: self, style: .plain, target: nil, action: nil)
    }
}

extension String : UIBarButtonItemConvertible  {
    public  func toBarbuttonItem() -> UIBarButtonItem {
        return UIBarButtonItem(title: self, style: .plain, target: nil, action: nil)
    }
}

extension UIView : UIBarButtonItemConvertible {
    public  func toBarbuttonItem() -> UIBarButtonItem {
        return UIBarButtonItem.init(customView: self)
    }
}

extension UIBarButtonItem : UIBarButtonItemConvertible {
    public  func toBarbuttonItem() -> UIBarButtonItem {
        return self
    }
}
