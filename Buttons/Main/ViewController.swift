//
//  ViewController.swift
//  Buttons
//
//  Created by Alexander Ischenko on 04.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupFirstButton()
        setupSecondButton()
        setupThirdButton()
    }
    
    //MARK: - Actions
    
    @IBAction func firstButtonPressed(_ sender: Any) {
        firstButton.addTarget(self, action: #selector(animateUp), for: .touchDown)
        firstButton.addTarget(self, action: #selector(animateDown), for: .touchUpInside)
    }
    
    @IBAction func secondButtonPressed(_ sender: Any) {
        secondButton.addTarget(self, action: #selector(animateUp), for: .touchDown)
        secondButton.addTarget(self, action: #selector(animateDown), for: .touchUpInside)
    }
    
    @IBAction func thirdButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "VC2", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC2") as! VC2
        present(vc, animated: true)
    }
    
    //MARK: - Private Methods
    
    private func setupFirstButton() {
        
        var config = UIButton.Configuration.filled()
        config.title = "First Button"
        config.image = UIImage(systemName: "arrow.right.circle")
        config.imagePlacement = .trailing
        config.imagePadding = 8
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        firstButton.configuration = config
    }
    
    private func setupSecondButton() {
        var config = UIButton.Configuration.filled()
        config.title = "Second Medium Button"
        config.image = UIImage(systemName: "arrow.right.circle")
        config.imagePlacement = .trailing
        config.imagePadding = 8
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        secondButton.configuration = config
    }
    
    private func setupThirdButton() {
        var config = UIButton.Configuration.filled()
        config.title = "Third"
        config.image = UIImage(systemName: "arrow.right.circle")
        config.imagePlacement = .trailing
        config.imagePadding = 8
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        thirdButton.configuration = config
    }
    
    
    //MARK: - Obj functions
    
    @objc func animateUp(sender: UIButton){
            UIView.animate(withDuration: 0.1, delay: 0, options: [.allowUserInteraction, .curveEaseIn], animations: {
                sender.transform = .init(scaleX: 0.7, y: 0.7)
            }, completion: nil)
        }
        
    @objc func animateDown(sender: UIButton){
            UIView.animate(withDuration: 0.1, delay: 0, options: [.allowUserInteraction, .curveEaseOut], animations: {
                sender.transform = .identity
            }, completion: nil)
        }

}
