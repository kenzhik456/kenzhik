
import UIKit

class winnerviewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    
    @IBOutlet var winner: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "rating" {
            let destination = segue.destination as! raitingView
            if winner.text != "" {
                var playerNew = true
                for i in layerData.player.indices {
                    if layerData.player[i].name == winner.text {
                        layerData.player[i].score += 10
                        playerNew = false
                    }
                }
                if playerNew  {
                    layerData.player.append(Player(name: winner.text, image: UIImage.init(named: "test3.jpg"),score: 10))
                }
               
            }
        }
        
    }
    
}
