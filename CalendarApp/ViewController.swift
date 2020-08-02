import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   

    @IBOutlet weak var Calendar: UICollectionView!
    @IBOutlet weak var MonthLabel: UILabel!
    //Define the name of all months
    let Months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    //Define the name of all days
    let DaysOfMonth = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    //Define how many days are in each month
    var DaysInMonths = [31,28,31,30,31,30,31,31,30,31,30,31]
    //Create a current month String
    var currentMonth = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Display the Month & Year for the month label
        currentMonth = Months[month]
        MonthLabel.text = "\(currentMonth) \(year)"
    }

    //Button Controllers Next Month & Previous(Back) Month
    @IBAction func Next(_ sender: Any) {
    }
    
    @IBAction func Back(_ sender: Any) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DaysInMonths[month]
    }
    
    //create the individual dates for the calander view for calender collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Calendar", for: indexPath) as! DateCollectionViewCell
        cell.backgroundColor = UIColor.red //set the background color of all labels created in the collection view
        cell.DateLabel.text = "\(indexPath.row + 1)" //'1' is to select the starting number else 0 will display 'dont think people will get used to the idea of counting from 0'
        
        return cell
    }

}

