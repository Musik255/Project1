//
//  DetailViewController.swift
//  Project1
//
//  Created by Павел Чвыров on 07.11.2023.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imagetoLoad = selectedImage{
            imageView.image = UIImage(named: imagetoLoad)
        }
    }



}
