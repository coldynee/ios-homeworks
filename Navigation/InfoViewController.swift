import UIKit

class InfoViewController: UIViewController {
    
    var button = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Информация"
        view.backgroundColor = .systemGreen
        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 100)
        button.center = view.center
        button.backgroundColor = .red
        button.setTitle("Внимание", for: .normal)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        
    }

    @objc func showAlert(){
        let alert = UIAlertController(title: "Warning", message: "Dangerous here!", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Ok", style: .default){_ in
            print("Ok action tapped")
        }
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel){_ in
            print("Cancel action tapped")
        }
        alert.addAction(okBtn)
        alert.addAction(cancelBtn)
        present(alert, animated: true){
            print("Alert controller is presented")
        }
    }
}
