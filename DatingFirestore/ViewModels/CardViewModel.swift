//
//  CardViewModel.swift
//  DatingFirestore
//
//  Created by Azhar Anwar on 11/13/18.
//  Copyright © 2018 Azhar Anwar. All rights reserved.
//

import UIKit

protocol ProducesCardViewModel {
    func toCardViewModel() -> CardViewModel
}

struct CardViewModel {
    //Defining the properties the view will render out
    let imageName: String
    let attributedText: NSAttributedString
    let textAlignment: NSTextAlignment
}


