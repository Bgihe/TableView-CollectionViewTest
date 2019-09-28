//
//  ViewController.swift
//  TableView+CollectionViewTest
//
//  Created by apple on 2019/9/25.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.tableView)
    }

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y:  0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        tableView.backgroundColor = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName:"CoverCell", bundle:nil),
                           forCellReuseIdentifier:"myCell")
        return tableView
    }()
    
    // 設置 cell 的高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    // count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CoverCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            as! CoverCell
        return cell
    }
}


