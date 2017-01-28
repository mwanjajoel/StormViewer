//
//  ViewController.swift
//  StormViewer
//
//  Created by Codebender on 28/01/2017.
//  Copyright © 2017 A23 Labs. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

	//pictures property array to use
	var pictures = [String]()

	override func viewDidLoad() {
		super.viewDidLoad()

		title = "Storm Viewer"

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

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

		return pictures.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
		cell.textLabel?.text = pictures[indexPath.row]

		return cell

	}

	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

		//we try to load the detail view controller by typecasting it! Ahem!
		if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {

			//success, woohoo! we are in
			vc.selectedImage = pictures[indexPath.row]

			//push it to the Navigation Controller 😃🏆🙌🏼
			navigationController?.pushViewController(vc, animated: true)
		}
	}



	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

