//
//  Meme.swift
//  MemeMe
//

import UIKit

//
// Data model for a Meme
//
class Meme: NSObject {
    var topText: String
    var bottomText: String
    var image: UIImage
    var memedImage: UIImage?
    var scaledAndCroppedImage: UIImage?
    
    init(topText: String, bottomText: String, image: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.image = image
        self.memedImage = image
    }
}