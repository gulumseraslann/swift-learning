//
//  CitiesViewController.swift
//  week2
//
//  Created by Gülümser Aslan on 25/04/2021.
//  Copyright © 2021 Gülümser Aslan. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController {

    //var cities = ["Adana", "Adıyaman", "Antalya", "İstanbul", "Balıkesir", "İzmir", "Çanakkale", "Eskişehir","Bursa", "Ankara", "Sivas"]
    
    var cities = [CityModel]()

override func viewDidLoad() {
    super.viewDidLoad()
    cities.append(CityModel(name:"Bursa", famous:"İskender"))
    cities.append(CityModel(name:"Kayseri", famous:"Mantı"))
    cities.append(CityModel(name:"İzmir", famous:"Boyoz"))
    }
}

// UITableViewDelegate = optional oldugu için implement etmeye gerek kalmadı
extension CitiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell")!
        cell.textLabel?.text = cities[indexPath.row].name
        cell.detailTextLabel?.text = cities[indexPath.row].famous
        return cell
    }
    
    
}
