//
//  ViewController.swift
//  ScoreKeeprV2
//
//  Created by Tyler Rentz on 1/31/21.
//First Version

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Team2WinCounter: UILabel!
    @IBOutlet weak var Team1WinCounter: UILabel!
    
    @IBOutlet weak var SetLabel: UILabel!
    @IBOutlet weak var Team2Lbl: UILabel!
    @IBOutlet weak var Team1Lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Team1Lbl.text = "0"
        Team2Lbl.text = "0"
        SetLabel.text = "1"
        Team1WinCounter.text = "0"
        Team2WinCounter.text = "0"
        // Do any additional setup after loading the view.
    }

    @IBAction func Team1Btn(_ sender: Any) {
     Add()
        checkScore()
    }
    func Add() {
        let x = Team1Lbl.text!
        var y = Int(x)!
        y += 1
        Team1Lbl.text = String(y)
    }
    
    @IBAction func Team2Btn(_ sender: Any) {
        let x = Team2Lbl.text!
        var y = Int(x)!
        y += 1
        Team2Lbl.text = String(y)
        checkScore()
    }
    func checkScore() {
        let scoreOne = Team1Lbl.text!
        let scoreTwo = Team2Lbl.text!
        let setNumber = SetLabel.text!
        let team1Wins = Team1WinCounter.text!
        let team2Wins = Team2WinCounter.text!
        var q = Int(team1Wins)!
        var w = Int(team2Wins)!
        var z = Int(setNumber)!
        let x = Int(scoreOne)!
        let y = Int(scoreTwo)!
        if x >= 25 && y < x - 1  {
            Team1Lbl.text = "0"
            Team2Lbl.text = "0"
            z += 1
            SetLabel.text = String(z)
            q += 1
            Team1WinCounter.text = String(q)
            checkSet()
        }
        else if y >= 25 && x < y - 2  {
            Team1Lbl.text = "0"
            Team2Lbl.text = "0"
            z += 1
            SetLabel.text = String(z)
            w += 1
            Team2WinCounter.text = String(w)
            checkSet()
        } else if z == 3 && y >= 15 && x < y - 2 && q == 1 && w == 1 {
            Team1Lbl.text = "0"
            Team2Lbl.text = "0"
            SetLabel.text = "1"
            w += 1
            Team2WinCounter.text = "0"
            Team1WinCounter.text = "0"
            checkSet()
            
        } else if z == 3 && x >= 15 && y < x - 2 && q == 1 && w == 1{
            Team1Lbl.text = "0"
            Team2Lbl.text = "0"
            SetLabel.text = "1"
            q += 1
            Team2WinCounter.text = "0"
            Team1WinCounter.text = "0"
            checkSet()
        }
    }
    @IBAction func ResetButton(_ sender: Any) {
        Team2WinCounter.text = "0"
        Team1WinCounter.text = "0"
        SetLabel.text = "1"
        Team1Lbl.text = "0"
        Team2Lbl.text = "0"
        
    }
    func checkSet() {
        if Team1WinCounter.text == "2" {
            Team2WinCounter.text = "0"
            Team1WinCounter.text = "0"
            SetLabel.text = "1"
            Team1Lbl.text = "0"
            Team2Lbl.text = "0"
        } else if Team2WinCounter.text == "2" {
            Team2WinCounter.text = "0"
            Team1WinCounter.text = "0"
            SetLabel.text = "1"
            Team1Lbl.text = "0"
            Team2Lbl.text = "0"
        }
    }
}


