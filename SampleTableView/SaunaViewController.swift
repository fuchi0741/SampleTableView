//
//  SaunaViewController.swift
//  SampleTableView
//
//  Created by 渕一真 on 2021/08/29.
//

import UIKit

class SaunaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let saunaNameList = ["黄金湯","ひだまりの湯 萩の湯","両国湯屋江戸遊","サウナセンター","新宿天然温泉 テルマー湯","ソロサウナtuna","タイムズスパ・レスタ", "ドシー恵比寿", "サウナ錦糸町"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "SaunaTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return saunaNameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SaunaTableViewCell
        cell.saunaNameLabel.text = saunaNameList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "CellTap", sender: nil)
    }
}
