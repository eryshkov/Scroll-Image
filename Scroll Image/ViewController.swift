//
//  ViewController.swift
//  Scroll Image
//
//  Created by Evgeniy Ryshkov on 06/10/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    let imageName = "colorful-bird-246020.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutSetup()
    }

    func layoutSetup() {
        imageView.image = UIImage(named: imageName)
        guard let imageSize = imageView.image?.size else {return}
//        imageView.widthAnchor.constraint(equalToConstant: imageSize.width)
//        imageView.heightAnchor.constraint(equalToConstant: imageSize.height)
        scrollView.contentSize = imageSize
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 4
        scrollView.zoomScale = 1
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}

