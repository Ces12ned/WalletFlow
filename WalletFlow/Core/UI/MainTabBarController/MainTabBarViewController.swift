//
//  MainTabBarViewController.swift
//  WalletFlow
//
//  Created by Edgar Cisneros on 10/08/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    
    convenience init(){
        self.init(nibName: nil, bundle: nil)
        self.setUpViewController()
    }
    
    
    
    private func setUpViewController(){
        
        viewControllers = [
            makeNav(for: makeIncomesList(), title: "Ingresos", icon: "square.and.arrow.down"),
            makeNav(for: makeOutcomesList(), title: "Gastos", icon: "square.and.arrow.up"),
            makeNav(for: makeGeneralBalanceView(), title: "Balance General", icon: "creditcard"),
            makeNav(for: makeProfileView(), title: "Perfil", icon: "person.text.rectangle")
        ]
        
    }
    
    
    private func makeNav(for vc: UIViewController, title: String, icon: String) -> UIViewController {
        vc.navigationItem.largeTitleDisplayMode = .always
        
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.image = UIImage(
            systemName: icon,
            withConfiguration: UIImage.SymbolConfiguration(scale: .large)
        )
        nav.tabBarItem.title = title
        nav.navigationBar.prefersLargeTitles = true
        return nav
    }
    
    
    private func makeIncomesList() -> UIViewController {
        
        let vc = UIViewController()
        
        vc.title = "Ingresos"
        vc.view.backgroundColor = .systemGroupedBackground
        
        return vc
        
    }
    
    private func makeOutcomesList() -> UIViewController {
        
        let vc = UIViewController()
        
        vc.title = "Gastos"
        vc.view.backgroundColor = .systemGroupedBackground
        
        
        return vc
        
    }
    
    private func makeGeneralBalanceView() -> UIViewController {
        
        let vc = UIViewController()
        
        vc.title = "Balance General"
        vc.view.backgroundColor = .systemGroupedBackground
        
        return vc
        
    }
    
    private func makeProfileView() -> UIViewController {
        
        let vc = UIViewController()
        
        vc.title = "Mi perfil"
        vc.view.backgroundColor = .systemGroupedBackground
        
        return vc
        
    }

}
