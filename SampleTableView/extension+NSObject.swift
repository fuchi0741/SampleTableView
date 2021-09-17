//
//  extension+NSObject.swift
//  SampleTableView
//
//  Created by 渕一真 on 2021/09/18.
//

import Foundation

extension NSObject {
    class var className: String {
        String(describing: self)
    }
    
    var className: String {
        type(of: self).className
    }
}
