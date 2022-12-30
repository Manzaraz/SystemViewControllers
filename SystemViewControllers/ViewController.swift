//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by Christian Manzaraz on 20/12/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageView.image else  { return }
        let activityController =  UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        present(activityController, animated: true, completion: nil)
    }
    @IBAction func safariButtonTapped(_ sender: UIButton) {
    }
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
    }
    @IBAction func emailButtonTapped(_ sender: UIButton) {
    }
    


}

