//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by Christian Manzaraz on 20/12/2022.
//

import UIKit
import SafariServices

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
        if let url = URL(string: "http://www.apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Elige el origen de la imagen", message: nil, preferredStyle: .actionSheet)
        
        // Actions
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { action in
            print("User selected Camera action")
        }
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { action in
            print("User selected Photo Library action")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        alertController.popoverPresentationController?.sourceView = sender
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func emailButtonTapped(_ sender: UIButton) {
        
    }
    


}

