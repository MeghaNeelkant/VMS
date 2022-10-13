//
//  CollegueDetailsViewController.swift
//  Virgin Money Staff
//
//  Created by Megha on 11/10/22.
//

import UIKit

final class CollegueDetailsViewController: UIViewController {

    @IBOutlet private weak var firstName: UILabel!
    @IBOutlet private weak var lastName: UILabel!
    @IBOutlet private weak var email: UILabel!
    @IBOutlet private weak var jobTitle: UILabel!
    @IBOutlet private weak var favouriteColor: UILabel!
    @IBOutlet private weak var imageViewLabel: UIImageView!
    
    var colleague: ColleagueElement?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = colleague?.firstName
        lastName.text = colleague?.lastName
        email.text = colleague?.email
        jobTitle.text = colleague?.jobtitle
        favouriteColor.text = colleague?.favouriteColor
        if let url = URL(string: colleague?.avatar ?? "") {
            imageViewLabel.getImage(from: url)
        }
    }
}
