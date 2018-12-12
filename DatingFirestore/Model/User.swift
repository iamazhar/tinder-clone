//
//  User.swift
//  DatingFirestore
//
//  Created by Azhar Anwar on 11/13/18.
//  Copyright © 2018 Azhar Anwar. All rights reserved.
//

import UIKit

struct User: ProducesCardViewModel {
    var name: String?
    var age: Int?
    var profession: String?
    var imageUrl1: String?
    var uid: String?
    
    init(dictionary: [String: Any]) {
        // Initialize user here
        self.age = dictionary["age"] as? Int
        self.profession = dictionary["profession"] as? String
        self.name = dictionary["fullName"] as? String ?? ""
        self.imageUrl1 = dictionary["imageUrl1"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
    
    func toCardViewModel() -> CardViewModel {
        let attributedText = NSMutableAttributedString(string: name ?? "", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 32, weight: .heavy)])
        
        let ageString = age != nil ? "\(age!)" : "N\\A"
        attributedText.append(NSAttributedString(string: " \(ageString)", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 24, weight: .regular)]))
        
        let professionString = profession != nil ? profession! : "Not Available"
        
        attributedText.append(NSAttributedString(string: "\n\(professionString)", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20, weight: .regular)]))
        
        return CardViewModel(imageNames: [imageUrl1 ?? ""], attributedString: attributedText, textAlignment: .left)
    }
}


