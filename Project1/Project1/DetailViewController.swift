//
//  DetailViewController.swift
//  Project1
//
//  Created by Павел Чвыров on 07.11.2023.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage : String?
    var filesAmount : Int!
    var indexNumber : Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = String("Picture \(indexNumber!) of \(filesAmount!)")
        if let imagetoLoad = selectedImage{
            imageView.image = UIImage(named: imagetoLoad)
        }
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }



}
