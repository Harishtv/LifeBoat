//
//  HomeViewController.swift
//  Lifeboat
//
//  Created by Kav Interactive on 18/09/19.
//  Copyright © 2019 Kav Interactive. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet var horizontalCollectionView: UICollectionView!
    
    @IBOutlet weak var varticalCollectionView: UICollectionView!
    
    var contentsArray = ["Courses", "Faculty", "Batches", "Students", "Expenses", "Leads", " Broadcast", "timeperiod"]
    
    var imgarray = [ #imageLiteral(resourceName: "s4") ,#imageLiteral(resourceName: "s1") ,#imageLiteral(resourceName: "s2"),#imageLiteral(resourceName: "s5") ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = true
        self.navigationItem.setHidesBackButton(true, animated:true)
        registerCell()
    }
    
    func registerCell(){
        let nib = UINib(nibName: "HomeCollectionViewCell", bundle: nil)
        self.varticalCollectionView.register(nib, forCellWithReuseIdentifier: "HomeCollectionViewCell")
    }

}
extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == varticalCollectionView ){
           return 7
        }else{
            return imgarray.count
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == varticalCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
            cell.titleLabel.text = contentsArray[indexPath.row]
            return cell
        }else{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalCollectionViewCell", for: indexPath) as! HorizontalCollectionViewCell
//            cell2.imgviews.image = UIImage(named: imgarray[indexPath.row])
             cell2.imgviews.image = imgarray[indexPath.row]
            cell2.bottomView.clipsToBounds = true
            cell2.bottomView.layer.cornerRadius = 15
                return cell2
            }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == varticalCollectionView{
            if indexPath.row == 0{
               let vc = self.storyboard?.instantiateViewController(withIdentifier: "CoursesViewContoller") as! CoursesViewContoller
                self.navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 1{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "FacultyViewController") as! FacultyViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 2{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "BatchesViewController") as! BatchesViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 3{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "StudentsViewController") as! StudentsViewController
                 self.navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 4{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ExpensesViewController") as! ExpensesViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 5{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "LeadsViewController") as! LeadsViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 6{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "BroadcastViewController") as! BroadcastViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 7{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "TimeperiodViewController") as! TimeperiodViewController
                self.navigationController?.pushViewController(vc, animated: true)
           
            }
            
        }else{
            
        }
    
      
      
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == varticalCollectionView{
             return CGSize(width: collectionView.bounds.width/2.0, height: UIScreen.main.bounds.size.height * 0.225);
        }else{
            return CGSize(width: collectionView.bounds.width/1.0, height: collectionView.frame.size.height);
        }
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return  0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return  0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
}

