#Setting

>描述：ios 应用跳转到设置页面，包含定位，蓝牙，wifi等


- 添加URL Types 
添加URL Schemes 为 profs
![Alt text](./Screen Shot 2015-07-08 at 11.44.52 PM.png)

- 添加代码
```
import UIKit

class ViewController: UIViewController {
    
    private var arr :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        arr.append("prefs:root=LOCATION_SERVICES")
        arr.append("prefs:root=WIFI")
        arr.append("prefs:root=Bluetooth")
        arr.append("prefs:root=General")
        arr.append("prefs:root=General&path=About")
        arr.append("prefs:root=Phone")
        arr.append("prefs:root=DEVELOPER")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func execAction(sender: UIButton) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: arr[sender.tag])!)

    }
    
}
```

- 效果如下
 ![Alt text](./setting_gif.gif)




