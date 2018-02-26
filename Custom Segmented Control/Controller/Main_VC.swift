// Created by Yusif Aliyev
// February 26, 2018

import UIKit

class Main_VC: UIViewController {

    @IBOutlet weak var image_view: UIImageView!
    @IBOutlet weak var custom_segmented_control: Custom_Segmented_Control!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image_view.layer.borderWidth = custom_segmented_control.layer.borderWidth
        image_view.layer.cornerRadius = image_view.frame.width / 2
        image_view.layer.borderColor = custom_segmented_control.layer.borderColor
    }

    @IBAction func segment_changed(_ sender: Custom_Segmented_Control) {
        switch sender.selected_button_idex {
        case 0:
            image_view.image = UIImage(named: "john")
            break
        case 1:
            image_view.image = UIImage(named: "paul")
            break
        case 2:
            image_view.image = UIImage(named: "george")
            break
        case 3:
            image_view.image = UIImage(named: "ringo")
            break
        default:
            image_view.image = UIImage(named: "none")
            break
        }
    }
        
}
