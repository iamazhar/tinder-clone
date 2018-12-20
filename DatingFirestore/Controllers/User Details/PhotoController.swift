//
//  PhotoController.swift
//  DatingFirestore
//
//  Created by Azhar Anwar on 12/19/18.
//  Copyright © 2018 Azhar Anwar. All rights reserved.
//

import UIKit

class PhotoController: UIViewController {
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "jane3"))
    
    // provide an initializer that takes in a URL instead
    init(imageUrl: String) {
        if let url = URL(string: imageUrl) {
            imageView.sd_setImage(with: url)
        }
        
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.fillSuperview()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
