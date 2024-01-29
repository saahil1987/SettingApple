//
//  ViewController.swift
//  SettingApple
//
//  Created by Saahil Kaushal on 07/12/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    var photo = ["airplane","wifi","bluetooth","cellular","hotsport","notification","sound","focus","screenTime","general","controlcenter","Brightness","home screen","accessbility","wallpaper1"]
    
    var name = ["Airplane Mode","Wi-Fi","Bluetooth","Cellular","Personal Hotspot","Notification","Sound & Haptics","Focus","Screen Time","General","Control Center","Display & Brightness","Home Screen","Accessibility","Wallpaper"]
    
    
    
    @IBOutlet weak var mytable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mytable.dataSource = self
        mytable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = mytable.dequeueReusableCell(withIdentifier: "FirstTableCell", for: indexPath)as! FirstTableCell
        cell.pictureImg.image = UIImage(named: photo[indexPath.row])
        let name1 = name[indexPath.row]
        cell.nameBtn.setTitle(name1, for: .normal)
        cell.selectionStyle = .none
        cell.switchSystem.isOn = false
        
        if indexPath.row == 0{
            cell.switchSystem.isHidden = false
        }else if indexPath.row == 1{
            cell.switchSystem.isHidden = true
        }else if indexPath.row == 2{
            cell.switchSystem.isHidden = true
        }else if indexPath.row == 3{
            cell.switchSystem.isHidden = true
        }else if indexPath.row == 4{
            cell.switchSystem.isHidden = true
        }else if indexPath.row == 5{
            cell.switchSystem.isHidden = true
        }else {
            cell.switchSystem.isHidden = true
        }
        //cell.nameBtn.addTarget(self, action: #selector(ButtonClicked), for: .touchUpInside)
        //cell.nameBtn.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)
            
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
//    @objc func ButtonClicked(){
//            
//            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
//            self.navigationController?.pushViewController(vc, animated: true)
//            
//        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
     if(indexPath.row == 1){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

                let controller = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController

                self.navigationController?.pushViewController(controller, animated: true)
        }else if(indexPath.row == 2){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

                let controller = storyboard.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController

                self.navigationController?.pushViewController(controller, animated: true)
        }else if(indexPath.row == 3){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

                let controller = storyboard.instantiateViewController(withIdentifier: "FiveViewController") as! FiveViewController

                self.navigationController?.pushViewController(controller, animated: true)
        }else if(indexPath.row == 4){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

                let controller = storyboard.instantiateViewController(withIdentifier: "SixViewController") as! SixViewController

                self.navigationController?.pushViewController(controller, animated: true)
        }else if ( indexPath.row == 5 ){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

                let controller = storyboard.instantiateViewController(withIdentifier: "SevenViewController") as! SevenViewController

                self.navigationController?.pushViewController(controller, animated: true)
        }else if(indexPath.row == 6){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

                let controller = storyboard.instantiateViewController(withIdentifier: "EightViewController") as! EightViewController

                self.navigationController?.pushViewController(controller, animated: true)
        }
        }
        }
    
  
    
    
   
    
    
    


