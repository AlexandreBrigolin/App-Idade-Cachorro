//
//  ViewController.swift
//  AppIdadeCachorro
//
//  Created by Alexandre Brigolin on 30/06/22.
//

import UIKit

class ResultViewControler: UIViewController {

    @IBOutlet weak var imageResult: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var receivedAgeResult: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    configResultElements()
        // Do any additional setup after loading the view.
    }
    

    private func configResultElements() {
        imageResult.image = UIImage(named: "ImagemPinscher")
        resultLabel.text =  receivedAgeResult
        view.backgroundColor = .gray
        resultLabel.textAlignment = .center
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
