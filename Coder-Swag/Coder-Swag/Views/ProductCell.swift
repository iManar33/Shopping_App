
import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var titleLbl     : UILabel!
    @IBOutlet weak var priceLable   : UILabel!
    
    func uppdateViews (product : Product){
        productImage.image = UIImage(named: product.imageName)
        titleLbl.text      = product.title
        priceLable.text    = product.price
    }
}
