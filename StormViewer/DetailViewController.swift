//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Codebender on 28/01/2017.
//  Copyright © 2017 A23 Labs. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	@IBOutlet weak var ImageView: UIImageView!
	var selectedImage: String?
	

    override func viewDidLoad() {
        super.viewDidLoad()

		title = selectedImage
		
		//we then load the image unto the view 
		if let imageToLoad = selectedImage {

			ImageView.image = UIImage(named: imageToLoad)

		}


    }

	override func viewWillAppear(_ animated: Bool) {

		super.viewWillAppear(animated)
		navigationController?.hidesBarsOnTap = true

	}

	override func viewWillDisappear(_ animated: Bool) {

		super.viewWillDisappear(animated)
		navigationController?.hidesBarsOnTap = false

	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

       
    }
    



}
