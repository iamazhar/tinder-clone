//
//  Bindable.swift
//  DatingFirestore
//
//  Created by Azhar Anwar on 12/10/18.
//  Copyright © 2018 Azhar Anwar. All rights reserved.
//

import Foundation

class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?) -> ())?
    
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
}
