import UIKit

class BBCHandler: NewsTableHandler {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BBCCell.identifier) as! BBCCell

        let article = items[indexPath.row]
        cell.load(article: article, downloader: downloader)
        cell.loadBadge(number: indexPath.row)

        return cell
    }

}
