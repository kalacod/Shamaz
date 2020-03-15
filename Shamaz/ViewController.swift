//
//  ViewController.swift
//  Shamaz
//
//  Created by SreekalaKutty on 3/7/20.
//  Copyright © 2020 sree. All rights reserved.
//


// TODO : add comments, add more options, beautify, add constraints

import UIKit

// Controller class for the single storyboard
class ViewController: UIViewController {

    // Label display for user prompt
    @IBOutlet var promptText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set default text for the prompt label
        promptText.text = "Prompt appears here"
    }
    
    @IBAction func pastExperienceButton (_ sender: Any) {

        // declare and initialize an array to hold the past experiences user prompts
        let pastExperience = ["Describe your day 2 days ago", "What places have you visited in the last year and why?", "Tell us about your best experiences in the last year", "What is your best memory from 10 years ago", "Which was your favorite song 6 months ago?", "What was the scariest thing that happened to you 5 years ago?"]

        // generate a random number with an upper limit of number of items in the array.
        let randomIndex = Int(arc4random_uniform(UInt32(pastExperience.count)))

        // display user prompt on the label
        promptText.text = pastExperience[randomIndex]

    }
    @IBAction func futureDreamButton(_ sender: Any) {

        // declare and initialize an array to hold the future dreams user prompts
        let futureDreams = ["What would you like to be doing a month from now?", "Which places do you plan to visit in the next one year?", "Where do you see yourself 3 years from now?", "What are you excited about doing in the next 1 week?", "What is your fitness goal for the next 1 month?"]

        // generate a random number with an upper limit of number of items in the array.
        let randomIndex = Int(arc4random_uniform(UInt32(futureDreams.count)))

        // display user prompt on the label
        promptText.text = futureDreams[randomIndex]

    }

    @IBAction func nextButton(_ sender: Any) {

        // reset the label text for the next user
        promptText.text = "Select one of the above."

    }

}

