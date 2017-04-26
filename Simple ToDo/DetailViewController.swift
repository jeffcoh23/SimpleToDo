//
//  DetailViewController.swift
//  Simple ToDo
//
//  Created by Jeff Cohen on 4/26/17.
//  Copyright © 2017 Jeff Cohen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var text: String = ""
    var masterView: ViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = text
        textView.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    
    
    func setText(t: String){
        text = t
        if isViewLoaded{
            textView.text = t
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        masterView.newRowText = textView.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
