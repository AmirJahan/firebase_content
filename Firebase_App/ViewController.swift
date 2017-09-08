import UIKit

class ViewController: UIViewController {
    
    var path : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        //        AppData.sharedInstance.registerMethod(inpName: "Amir",
        //                                              inpEmail: "amir.j@cinard.ca",
        //                                              inpPassword: "amir1234")
        
        /* // SAVING DATA
        let toSaveVal: String = "ding ding";
                let toSaveDict: [String : Any] = ["name" : "Amir",
                                          "role" : "unknown",
                                          "place" : "north Van"];
        AppData.sharedInstance.saveSomethingOnCloud(entry: toSaveVal)
        AppData.sharedInstance.saveSomethingOnCloud(entry: toSaveDict)
         */
        
        //        AppData.sharedInstance.deleteSomethingOffTheCloud()
        
        //        AppData.sharedInstance.changeValueOnCloud()
        
//        AppData.sharedInstance.readSomethingOffTheCloud()
        
        
        // NSCoder Stuff
        //        setupPath()
        //        writeData()
        //        readData()
    }
    
    func setupPath()
    {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as NSArray
        let documentDirectory = paths[0] as! String
        
        path = (documentDirectory as NSString).appendingPathComponent("myData.plist") as String
    }
    
    func writeData()  {
        let user_1 = UserClass(name: "amir", email: "amir.k@cinard.ca", uid: "uid");
        let user_2 = UserClass(name: "adam", email: "adam@cinard.ca", uid: "uid");
        
        let myGroupData = GroupClass(gName: "sever", uArray: [user_1, user_2])
        
        NSKeyedArchiver.archiveRootObject(myGroupData, toFile: path);
        print("\n\n Wrote it in: \(path) \n\n")
    }
    
    func readData ()  {
        if let readGroupData : GroupClass = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? GroupClass {
            
            dump(readGroupData)
        }
    }
}
