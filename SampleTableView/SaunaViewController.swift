//
//  SaunaViewController.swift
//  SampleTableView
//
//  Created by 渕一真 on 2021/08/29.
//

import UIKit

final class SaunaViewController: UIViewController {
    
    private let saunaNameList = ["黄金湯",
                                 "ひだまりの湯 萩の湯",
                                 "両国湯屋江戸遊",
                                 "サウナセンター",
                                 "新宿天然温泉 テルマー湯",
                                 "ソロサウナtuna",
                                 "タイムズスパ・レスタ",
                                 "ドシー恵比寿",
                                 "サウナ錦糸町"]
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "SaunaTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
    }
}

extension SaunaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        saunaNameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SaunaTableViewCell else { return UITableViewCell() }
        let name = saunaNameList[indexPath.row]
        cell.setupSaunaName(name: name)
        cell.delegate = self
        return cell
    }
}

extension SaunaViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "CellTap", sender: nil)
    }
}

extension SaunaViewController: SaunaTableViewCellDelegate {
    func didTapButton() {
        performSegue(withIdentifier: "ButtonTap", sender: nil)
    }
}
