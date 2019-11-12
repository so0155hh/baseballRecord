//
//  ViewController.swift
//  baseballRecord
//
//  Created by 桑原　望 on 2019/10/30.
//  Copyright © 2019 Swift-Beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let baseballWords = ["打率","盗塁成功率","出塁率","長打率","K/BB(打者","得点圏打率","K/BB(投手)","防御率","フライ/ゴロ率","勝率","a","b","c","d","e","f","g","h","i"] 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return baseballWords.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "wordCell", for: indexPath)
        cell.textLabel!.text = baseballWords[indexPath.row]
        return cell 
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: 
        
        //tableView.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: "BattingAverageController", sender: nil)
        default:
            print("わかりません")
        // switch indexPath.row {
        //case 0: self.performSegue(withIdentifier: "BattingAverage", sender: nil)
        //default: print("不明")
        }
        }
    }


