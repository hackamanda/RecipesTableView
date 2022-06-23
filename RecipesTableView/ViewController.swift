//
//  ViewController.swift
//  RecipesTableView
//
//  Created by Amanda Hack on 06/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = ["Macarrão bolonhesa", "Pizza de pepperoni", "Salada caesar"]
    var foodImages = [UIImage(named: "bolonhesa.png"), UIImage(named: "pepperoni.png"), UIImage(named: "salada.png")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "recipesListTableViewCell", bundle: nil), forCellReuseIdentifier: "recipesListTableViewCell")
        
        
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipesListTableViewCell", for: indexPath) as! RecipesListTableViewCell
        cell.recipeName.text = self.data[indexPath.row]
        cell.imageFood.image = self.foodImages[indexPath.row]
        
        return cell
        
    }
    
}
