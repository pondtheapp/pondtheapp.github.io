//
//  Copyright (c) 2015 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit
import Firebase

//@objc(MyPostsViewController)
class MyPostViewController: UITableViewController {
    var ref:FIRDatabaseReference!
    var assignment:NSMutableArray!
    var course:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ref = FIRDatabase.database().reference()
        
        assignment = NSMutableArray.init()
        
        ref.child("assignments").observeSingleEvent(of: .value, with: { (snapshot) in
            let value = snapshot.value as? NSDictionary
//            let username = value?["username"] as? String ?? ""
//            let user = User.init(username: username)
            if let dictionary = value as? [[String: AnyObject]]{
                for x in 0...dictionary.count{
                    if let same = dictionary[x] as? [String:AnyObject]{
                        assignment.append(same["assignment"])
                    if
                    }
                }
                
            }
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

//class MyPostsViewController: PostListViewController {
//  override func getQuery() -> FIRDatabaseQuery {
//    return (ref?.child("user-posts").child(getUid()))!
//  }
//}
