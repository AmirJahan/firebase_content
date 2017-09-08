
import Foundation
class GroupClass: NSObject, NSCoding {
    
    
    var groupName: String = "";
    var usersArr : Array<UserClass> = [];
    
    init(gName:String, uArray: Array<UserClass>) {
        self.groupName = gName
        self.usersArr = uArray
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let thisGroupName = aDecoder.decodeObject(forKey: "groupNameKey") as! String
        let thisUsersArr = aDecoder.decodeObject(forKey: "usersArrKey") as! Array<UserClass>
        
        self.init(gName: thisGroupName, uArray: thisUsersArr)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.groupName, forKey: "groupNameKey")
        aCoder.encode(self.usersArr, forKey: "usersArrKey")
    }
    
}
