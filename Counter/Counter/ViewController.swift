//
//  ViewController.swift
//  Counter
//
//  Created by Гриша Макаров on 17.02.2026.
//

import UIKit
public var dateList: [String] = ["История изменений:"]
class ViewController: UIViewController {

    @IBOutlet weak var Score: UILabel!

    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Tap(_ sender: Any) {
        score += 1
        Score.text = "\(score)"
        let now = "\(Date()) Прибавил число на 1"
        dateList.append(now)

    }
    @IBAction func TapMinus1(_ sender: Any) {
        if score > 0 {
            score -= 1
            Score.text = "\(score)"
            let now = "\(Date()) Убавил число на 1"
            dateList.append(now)
        } else {
            let now = "\(Date()) Захотел убавить меньше 0"
            dateList.append(now)
        }
    }
    
    
    @IBAction func Exterminate(_ sender: Any) {
        score = 0
        Score.text = "0"
        let now = "\(Date()) Exterminate!"
        dateList.append(now)
        
    }
    
}


