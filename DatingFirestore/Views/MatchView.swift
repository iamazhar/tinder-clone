//
//  MatchView.swift
//  DatingFirestore
//
//  Created by Azhar Anwar on 12/20/18.
//  Copyright © 2018 Azhar Anwar. All rights reserved.
//

import UIKit

class MatchView: UIView {
    
    fileprivate let currentUserImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "kelly3"))
        imageView.contentMode = .scaleAspectFill
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        return imageView
    }()
    
    fileprivate let cardUserImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "jane3"))
        imageView.contentMode = .scaleAspectFill
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupBlurView()
        
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        
        let imageWidth: CGFloat = 140
        
        addSubview(currentUserImageView)
        addSubview(cardUserImageView)
        
        currentUserImageView.layer.cornerRadius = imageWidth/2
        currentUserImageView.anchor(top: nil,
                                    leading: nil,
                                    bottom: nil,
                                    trailing: centerXAnchor,
                                    padding: .init(top: 0, left: 0, bottom: 0, right: 16),
                                    size: .init(width: imageWidth, height: imageWidth))
        currentUserImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        cardUserImageView.layer.cornerRadius = imageWidth/2
        cardUserImageView.anchor(top: nil,
                                 leading: centerXAnchor,
                                 bottom: nil,
                                 trailing: nil,
                                 padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                                 size: .init(width: imageWidth, height: imageWidth))
        cardUserImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    
    fileprivate func setupBlurView() {
        
        visualEffectView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapDismiss)))
        
        addSubview(visualEffectView)
        visualEffectView.fillSuperview()
        visualEffectView.alpha = 0
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.visualEffectView.alpha = 1
        }) { (_) in
            //
        }
    }
    
    @objc fileprivate func handleTapDismiss() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.alpha = 0
        }) { (_) in
            self.removeFromSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
