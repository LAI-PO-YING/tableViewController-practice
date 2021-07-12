//
//  AppleMusicTableViewController.swift
//  tableViewController practice
//
//  Created by 賴柏穎 on 2021/7/12.
//

import UIKit

class AppleMusicTableViewController: UITableViewController {
    
    var cellInfos: [CellInfo] = [
        
        CellInfo(albumImage: "pic1", songName: "出走", artist: "蔡健雅"),
        CellInfo(albumImage: "pic2", songName: "我一直都在這裡 (電影《熊出沒·狂野大陸》主題曲)", artist: "徐佳瑩"),
        CellInfo(albumImage: "pic3", songName: "Permission to Dance", artist: "防彈少年團"),
        CellInfo(albumImage: "pic4", songName: "NDA", artist: "Billie Eilish"),
        CellInfo(albumImage: "pic5", songName: "Motley Crew", artist: "Post Malone"),
        CellInfo(albumImage: "pic6", songName: "could cry just thinkin about you (Full Version)", artist: "Troye Sivan"),
        CellInfo(albumImage: "pic7", songName: "NOW I'M ALONE (feat. Sofía Valdés)", artist: "HONNE"),
        CellInfo(albumImage: "pic8", songName: "Stay", artist: "The Kid LAROI & Justin Bieber"),
        CellInfo(albumImage: "pic9", songName: "Crowd Go Crazy", artist: "John Legend"),
        CellInfo(albumImage: "pic10", songName: "並不是夕陽美景 (Songs Of Stories 03.)", artist: "Control T"),
        CellInfo(albumImage: "pic11", songName: "Stranger Things (feat. Karra)", artist: "Lizzy Wang"),
        CellInfo(albumImage: "pic12", songName: "Wrecked", artist: "Imagine Dragons"),
        CellInfo(albumImage: "pic13", songName: "Better Off Without You (feat. 瘦子E.SO)", artist: "吳卓源"),
        CellInfo(albumImage: "pic14", songName: "In My Toes", artist: "陳芳語"),
        CellInfo(albumImage: "pic15", songName: "Jurassic Ride", artist: "恐龍的皮"),
        CellInfo(albumImage: "pic16", songName: "潮隙", artist: "AD & 四枝筆"),
        CellInfo(albumImage: "pic17", songName: "You for Me", artist: "Sigala & Rita Ora"),
        CellInfo(albumImage: "pic18", songName: "Yellow Cab", artist: "DPR LIVE"),
        CellInfo(albumImage: "pic19", songName: "We Know (feat. BG8LOCC & Allen Flex)", artist: "婁峻碩"),
        CellInfo(albumImage: "pic20", songName: "夢想的台北", artist: "魏妙如"),
        CellInfo(albumImage: "pic21", songName: "プリクエル", artist: "Omoinotake"),
        CellInfo(albumImage: "pic22", songName: "Bad Habits", artist: "Ed Sheeran")
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cellInfos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(AppleMusicTableViewCell.self)", for: indexPath) as? AppleMusicTableViewCell else {return UITableViewCell()}
        let cellInfo = cellInfos[indexPath.row]
        
        cell.albumImageView.image = UIImage(named: cellInfo.albumImage)
        cell.songNameLabel.text = cellInfo.songName
        cell.artistLabel.text = cellInfo.artist

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
