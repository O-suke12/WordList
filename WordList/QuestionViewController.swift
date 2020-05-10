//
//  QuestionViewController.swift
//  WordList
//
//  Created by RS on 2020/05/05.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet var answer: UILabel!
    @IBOutlet var question: UILabel!
    @IBOutlet var nextButton: UIButton!
    
    var isAnswered: Bool = false
    var wordArray: [Dictionary< String,String>] = []
    var nowNumber: Int = 0
    let SaveData = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        answer.text = ""
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        wordArray = SaveData.array(forKey: "WORD") as![Dictionary<String,String>]
        wordArray.shuffle()
        question.text = wordArray[nowNumber]["english"]
    }
    @IBAction func nextButtonTapped() {
        
        if isAnswered{
            nowNumber += 1
            answer.text = ""
            
            if nowNumber < wordArray.count {
                question.text = wordArray[nowNumber]["english"]
                isAnswered = false
                nextButton.setTitle("答えを表示", for: .normal)
        
            }else{
                nowNumber = 0
                performSegue(withIdentifier: "toFinishView", sender: nil)
            }
        }else{
            answer.text = wordArray[nowNumber]["japanese"]
            isAnswered = true
            nextButton.setTitle("次へ", for: .normal)
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
}
