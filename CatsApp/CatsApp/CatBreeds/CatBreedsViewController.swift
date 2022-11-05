//
//  CatBreedsViewController.swift
//  CatsApp
//
//  Created by Gonzalo on 5/11/22.
//

import UIKit

class CatBreedsViewController: UIViewController {

    @IBOutlet weak var catBreedsTableView: UITableView!
    var catBreedCollection: [CatBreedModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.catBreedsTableView.delegate = self
        self.catBreedsTableView.dataSource = self
        catBreedsTableView.register(UINib(nibName: "CatBreedTableViewCell", bundle: nil), forCellReuseIdentifier: "CatBreedTableViewCell")


        callApi()
    }
    
    func callApi() {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        guard let url = URL(string: "https://api.thecatapi.com/v1/breeds") else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            guard error == nil  else {
             print(error)
                return
            }
            guard let data = data else {
                return
            }
            
            guard let catBreeds = try? JSONDecoder().decode([CatBreedModel].self, from: data) else {
                return
            }

            self.catBreedCollection = catBreeds
            DispatchQueue.main.async {
                self.catBreedsTableView.reloadData()
            }
        }
        
        task.resume()
    }

}


extension CatBreedsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        catBreedCollection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CatBreedTableViewCell", for: indexPath) as? CatBreedTableViewCell else { return UITableViewCell() }
        cell.configure(catBreedModel: catBreedCollection[indexPath.row])
        return cell
    }
}

    

