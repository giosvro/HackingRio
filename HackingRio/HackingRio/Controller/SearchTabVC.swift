//
//  SearchTabVC.swift
//  HackingRio
//
//  Created by Gabriel Almeida Hammes on 29/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class SearchTabVC: UITableViewController, UISearchBarDelegate{
    
  static var  favoriteDoctor: [Doctor] = [Doctor(crm: "1111", picture: "", priceCharged: 300, specialty: "Cardio", id: "222", slots: [Slot(timePerSlot: 30, date: .init(), clinic: Clinic(neighborhood: "Barra", adress: "Pedra da Barra"))], name: "Simone Araújo", age: "34", telephone: "999999", email: "simone@email.com", cpf: "123456789", bankAccount: BankAccount(bank: "Bradesco", account: "1234", agency: "1234")), Doctor(crm: "2222", picture: "", priceCharged: 500, specialty: "Otorrino", id: "333", slots: [Slot(timePerSlot: 45, date: .init(), clinic: Clinic(neighborhood: "Gavea", adress: "Marquês de São Vicente"))], name: "Julia Maria", age: "25", telephone: "33221122", email: "jm@gmail.com", cpf: "111.111.222.2222", bankAccount: BankAccount(bank: "Itau", account: "1111", agency: "2222"))]
    
    var filteredData = [Doctor]()
    
    var inSearchMode = false

    @IBOutlet var tableViewCell: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        searchBar.returnKeyType = UIReturnKeyType.done

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if inSearchMode {
            
            return filteredData.count
        }

        return SearchTabVC.favoriteDoctor.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewCell.dequeueReusableCell(withIdentifier: "cell") as! SearchTableViewCell
        
        cell.imageView?.image = UIImage(named: "Oval")
        if inSearchMode {
            
            cell.labelViewCell.text = filteredData[indexPath.row].name
            
        }
        else{
            
            cell.labelViewCell.text = SearchTabVC.favoriteDoctor[0].name
            
        }
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 99
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchBar.text == nil || searchBar.text == "" {
            
            inSearchMode = false
            
            view.endEditing(true)
            
            tableView.reloadData()
            
        } else {
            
            inSearchMode = true
            
            filteredData = SearchTabVC.favoriteDoctor.filter({ (doctor) -> Bool in
                doctor.name.contains(searchBar.text!)
            })
            
            tableView.reloadData()
        }
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
