import UIKit

class QuizViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    
    @IBAction func button0Clicked(_ sender: UIButton) {
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if sender.tag == 0 {
            appDelegate.userAnswers.append(currentAnswers[0])
        } else if sender.tag == 1 {
            appDelegate.userAnswers.append(currentAnswers[1])
        } else if sender.tag == 2 {
            appDelegate.userAnswers.append(currentAnswers[2])
        } else if sender.tag == 3 {
            appDelegate.userAnswers.append(currentAnswers[3])
        }
        
        print(appDelegate.userAnswers)
        appDelegate.currentQuestion += 1
        
        if appDelegate.currentQuestion == 4 {
            //segue to results page goes here
        } else {
            newQuestion()
        }
    
    }
    
    @IBAction func button1Clicked(_ sender: UIButton) {
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if sender.tag == 0 {
            appDelegate.userAnswers.append(currentAnswers[0])
        } else if sender.tag == 1 {
            appDelegate.userAnswers.append(currentAnswers[1])
        } else if sender.tag == 2 {
            appDelegate.userAnswers.append(currentAnswers[2])
        } else if sender.tag == 3 {
            appDelegate.userAnswers.append(currentAnswers[3])
        }
        
        print(appDelegate.userAnswers)
        appDelegate.currentQuestion += 1
        
        if appDelegate.currentQuestion == 4 {
            //segue to results page goes here
        } else {
            newQuestion()
        }
    
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if sender.tag == 0 {
            appDelegate.userAnswers.append(currentAnswers[0])
        } else if sender.tag == 1 {
            appDelegate.userAnswers.append(currentAnswers[1])
        } else if sender.tag == 2 {
            appDelegate.userAnswers.append(currentAnswers[2])
        } else if sender.tag == 3 {
            appDelegate.userAnswers.append(currentAnswers[3])
        }
        
        print(appDelegate.userAnswers)
        appDelegate.currentQuestion += 1
        
        if appDelegate.currentQuestion == 4 {
            //segue to results page goes here
        } else {
            newQuestion()
        }
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        
        if sender.tag == 0 {
            appDelegate.userAnswers.append(currentAnswers[0])
        } else if sender.tag == 1 {
            appDelegate.userAnswers.append(currentAnswers[1])
        } else if sender.tag == 2 {
            appDelegate.userAnswers.append(currentAnswers[2])
        } else if sender.tag == 3 {
            appDelegate.userAnswers.append(currentAnswers[3])
        }
        
        print(appDelegate.userAnswers)
    
    }
    
    //    @IBAction func resultsButtonClicked(_ sender: UIButton) {
    //        if appDelegate.currentQuestion != 3 {
    //            let alertController = UIAlertController(title: "Slow down!", message: "You need to answer all quiz questions first!", preferredStyle: UIAlertControllerStyle.alert)
    //
    //            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
    //
    //            present(alertController, animated: true, completion: nil)
    //        } else if appDelegate.currentQuestion == 3 {
    //            performSegue(withIdentifier: "show", sender: nil)
    //        }
    //    }
    
    func newQuestion() {
        question.text = appDelegate.questions[appDelegate.currentQuestion]
        var currentAnswers = appDelegate.answers[appDelegate.currentQuestion]
        button0.setTitle(currentAnswers[0], for: .normal)
        button1.setTitle(currentAnswers[1], for: .normal)
        button2.setTitle(currentAnswers[2], for: .normal)
        button3.setTitle(currentAnswers[3], for: .normal)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


