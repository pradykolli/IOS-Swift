//
//  SecondViewController.swift
//  TableViews Rock!
//
//  Created by Kolli,Pradeep on 2/19/19.
//  Copyright © 2019 Kolli,Pradeep. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    var sevenWonders = ["TajMahal","Pyrimids","Eiffel Tower","Great Wall of China","Christ the Redeemer Statue","The Roman Colosseum","Cannadian museum"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            
            return sevenWonders.count
        }
        return -1    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sevenWondersOfWorld")!
        cell.textLabel?.text = sevenWonders[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

