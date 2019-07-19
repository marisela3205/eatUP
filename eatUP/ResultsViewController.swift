import UIKit

class ResultsViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var result0: UILabel!
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    
    func showResult0() {
        appDelegate.currentQuestion = 0
        var nutrient = "protein"
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if appDelegate.userAnswers[0] == currentAnswers[0] {
            result0.text = "You need more \(nutrient)."
        } else if appDelegate.userAnswers[0] == currentAnswers[1] {
            result0.text = "You are getting enough \(nutrient)."
        } else if appDelegate.userAnswers[0] == currentAnswers[2] {
            result0.text = "You are consuming too much \(nutrient)."
        } else if appDelegate.userAnswers[0] == currentAnswers[3] {
            result0.text = "You should look into your \(nutrient) intake."
        }
    }
    
    func showResult1() {
        appDelegate.currentQuestion = 1
        var nutrient = "fiber"
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if appDelegate.userAnswers[1] == currentAnswers[0] {
            result1.text = "You need more \(nutrient)."
        } else if appDelegate.userAnswers[1] == currentAnswers[1] {
            result1.text = "You are getting enough \(nutrient)."
        } else if appDelegate.userAnswers[1] == currentAnswers[2] {
            result1.text = "You are consuming too much \(nutrient)."
        } else if appDelegate.userAnswers[1] == currentAnswers[3] {
            result1.text = "You should look into your \(nutrient) intake."
        }
    }
    
    func showResult2() {
        appDelegate.currentQuestion = 2
        var nutrient = "calcium"
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if appDelegate.userAnswers[2] == currentAnswers[0] {
            result2.text = "You need more \(nutrient)."
        } else if appDelegate.userAnswers[2] == currentAnswers[1] {
            result2.text = "You are getting enough \(nutrient)."
        } else if appDelegate.userAnswers[2] == currentAnswers[2] {
            result2.text = "You are consuming too much \(nutrient)."
        } else if appDelegate.userAnswers[2] == currentAnswers[3] {
            result2.text = "You should look into your \(nutrient) intake."
        }
    }
    
    func showResult3() {
        appDelegate.currentQuestion = 3
        var nutrient = "unsaturated fats"
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if appDelegate.userAnswers[3] == currentAnswers[0] {
            result3.text = "You need more \(nutrient)."
        } else if appDelegate.userAnswers[3] == currentAnswers[1] {
            result3.text = "You are getting enough \(nutrient)."
        } else if appDelegate.userAnswers[3] == currentAnswers[2] {
            result3.text = "You are consuming too many \(nutrient)."
        } else if appDelegate.userAnswers[3] == currentAnswers[3] {
            result3.text = "You should look into your \(nutrient) intake."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showResult0()
        showResult1()
        showResult2()
        showResult3()
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     ​​
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
