//
//  Advertiser.swift
//  DatingFirestore
//
//  Created by Azhar Anwar on 11/13/18.
//  Copyright © 2018 Azhar Anwar. All rights reserved.
//

import UIKit

struct Advertiser: ProducesCardViewModel {
    let title: String
    let brandName: String
    let posterPhotoName: String
    
    func toCardViewModel() -> CardViewModel {
        let attributedString = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 34, weight: .heavy)])
        attributedString.append(NSMutableAttributedString(string: "\n\(brandName)", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 24, weight: .bold)]))
        
        return CardViewModel(uid: "",imageNames: [posterPhotoName], attributedString: attributedString, textAlignment: .center)
    }
}

