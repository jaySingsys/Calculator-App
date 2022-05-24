//
//  ViewController.swift
//  Calculator
//
//  Created by singsys on 23/05/22.
//

import UIKit
class ViewController: UIViewController {
    //Properties
    var currentOperand:Double = 0
    var previousOperand:Double = 0
    var calculation = true
    var operation = 0
    //Label
    @IBOutlet weak var Screen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//Numbers button
    @IBAction func numbersButton(_ sender: UIButton) {
        if calculation == true {
        Screen.text = String(sender.tag)
            currentOperand = Double(Screen.text!)!
            calculation = false
        } else {
        Screen.text = Screen.text! + String(sender.tag)
            currentOperand = Double(Screen.text!)!
        }
    }
//Calculation button
    @IBAction func Claculate(_ sender: UIButton) {
        if Screen.text != "" && sender.tag != 15 && sender.tag != 16{
        previousOperand = Double(Screen.text!)!
        //Divide
        if sender.tag == 11 {
            Screen.text = "/"
        }
        //Multiply
        if sender.tag == 12 {
        Screen.text = "x"
        }
        //Add
        if sender.tag == 13 {
        Screen.text = "+"
        }
       //Subtract
        if sender.tag == 14 {
        Screen.text = "-"
        }
//Assinging Coming tag to Variable operation
        operation = sender.tag
        calculation = true;
        }else if sender.tag == 15 {
            //Divide
        if operation == 11{
        Screen.text = String(previousOperand / currentOperand)
        }
        //Multiply
        else if operation == 12{
        Screen.text = String(previousOperand * currentOperand)
        }
        //Add
        else if operation == 13{

        Screen.text = String(previousOperand + currentOperand)
        }
        //Subtract
        else if operation == 14{
        Screen.text = String(previousOperand - currentOperand)
        }
        }
// Reset Screen
        else if sender.tag == 16{
        Screen.text = ""
        previousOperand = 0;
        currentOperand = 0;
        operation = 0;
        }
    }
  }
