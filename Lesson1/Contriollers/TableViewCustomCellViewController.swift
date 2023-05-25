//
//  TableViewCustomCellViewController.swift
//  Lesson1
//
//  Created by Gulzat on 22/5/23.
//

import UIKit

class TableViewCustomCellViewController: UIViewController {

    private let idCell = "cell"
    @IBOutlet weak var tableView: UITableView!
    
    private var goodList: [Good] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        setData()
        /// # MARK: DEFAULT CELL
       // tableView.register(UITableViewCell.self, forCellReuseIdentifier: idCell)
        /// # MARK: CUSTOM CELL
        tableView.register(UINib(nibName: "ContactTableViewCell", bundle: nil),
                           forCellReuseIdentifier: idCell)
    }
    
    private func setData(){
        goodList = [
            Good(image: "ic_logo",
                 name: "Furniture",
                 count: 775,
                 color: "yellow",
                 material: "vcdbchdbcd",
                 dimensions: "24%73232",
                 weight: 34.6),
            Good(image: "ic_image2",
                 name: "Kitchen",
                 count: 100,
                 color: "yellow",
                 material: "vcdbchdbcd",
                 dimensions: "24%73232",
                 weight: 34.6),
            Good(image: "ic_logo",
                 name: "Table",
                 count: 200,
                 color: "yellow",
                 material: "vcdbchdbcd",
                 dimensions: "24%73232",
                 weight: 34.6),
            Good(image: "ic_image2",
                 name: "Chair",
                 count: 367,
                 color: "yellow",
                 material: "vcdbchdbcd",
                 dimensions: "24%73232",
                 weight: 34.6)
        ]
    }
}

extension TableViewCustomCellViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        goodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath) as! ContactTableViewCell
      //  cell.contactLabel.text = "It is custom cell label: \(indexPath.row)"
        cell.setData(
            goodName: goodList[indexPath.row].name,
            goodImage: goodList[indexPath.row].image,
            count: goodList[indexPath.row].count
            
        )
        return cell
    }
}

extension TableViewCustomCellViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell was tapped")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.number = "number: \(indexPath.row)"
        navigationController?.pushViewController(vc, animated: true)
    }
}
