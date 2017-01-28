//
//  ViewController.swift
//  StormViewer
//
//  Created by Codebender on 28/01/2017.
//  Copyright © 2017 A23 Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	//pictures property array to use
	var pictures = [String]()

	override func viewDidLoad() {
		super.viewDidLoad()

		//we are gonna use file manager, by first instantiating it
		let fm = FileManager.default

		//we then create a constant called Path that shows us where our files are in our app bundle
		let path = Bundle.main.resourcePath!

		let items = try! fm.contentsOfDirectory(atPath: path)

		//then we loop
		for item in items {

			if item.hasPrefix("nssl") {

				//load the pictures here! yay!
				pictures.append(item)
			}
		}

		//lets see if the pictures are actually found 
		print(pictures)

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

