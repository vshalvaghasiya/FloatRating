//
//  ViewController.swift
//  FloatRating
//
//  Created by Admin on 19/01/19.
//  Copyright © 2019 VISHAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var floatRatingView: FloatRatingView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        floatRatingView.backgroundColor = UIColor.clear
        
        /** Note: With the exception of contentMode, type and delegate,
         all properties can be set directly in Interface Builder **/
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIView.ContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        
    }


}

extension ViewController: FloatRatingViewDelegate {
    
    // MARK: FloatRatingViewDelegate
    
    func floatRatingView(_ ratingView: FloatRatingView, isUpdating rating: Double) {
        print(String(format: "%.2f", self.floatRatingView.rating))
    }
    
    func floatRatingView(_ ratingView: FloatRatingView, didUpdate rating: Double) {
        print(String(format: "%.2f", self.floatRatingView.rating))
    }
    
}
