//
//  MemeCollectionViewCell.swift
//  MemeMe
//


import UIKit

//
// MemeCollectionViewCell
// represents cell of a collection view containing a single meme item.
//
class MemeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var topLabel: UILabel?
    @IBOutlet weak var bottomLabel: UILabel?
    @IBOutlet weak var selectionImage: UIImageView?
    
    var meme: Meme? {
        didSet {
            if let meme = meme {
                imageView?.image = meme.scaledAndCroppedImage ?? meme.image
                topLabel?.text = meme.topText
                bottomLabel?.text = meme.bottomText
            }
        }
    }
    
    override var selected: Bool {
        didSet {
            selectionImage?.hidden = !selected
        }
    }
        
}
