

import UIKit

class raitingView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ratingTableView.dequeueReusableCell(withIdentifier: "player1") as! boo
        cell.view1.image = player[indexPath.row].image
        cell.name1.text = player[indexPath.row].name
        cell.score1.text = String(player[indexPath.row].score)
        return cell
     
    }
    var player = layerData.player

    override func viewDidLoad() {
        super.viewDidLoad()
        ratingTableView.delegate = self
        ratingTableView.dataSource = self
        player = layerData.player
        
    }
    
    @IBOutlet weak var ratingTableView: UITableView!
    
  
    
}
