//
//  ResourceVC.swift
//  EpubProject
//
//  Created by michelle on 2021/2/3.
//

import UIKit
import FolioReaderKit

class ResourceVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let resources:[Resource] = [Resource(title:"resume", fileExtension:"pdf"), Resource(title:"doyle-return-of-sherlock-holmes", fileExtension:"epub")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

extension ResourceVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resources.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let title = resources[indexPath.row].title ?? ""
        let fileExtension = resources[indexPath.row].fileExtension ?? ""
        cell?.textLabel?.text = title+"."+fileExtension
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let epubVC = self.storyboard?.instantiateViewController(withIdentifier: "EPubReaderVC") as? EPubReaderVC
        let pdfVC = self.storyboard?.instantiateViewController(withIdentifier: "PDFReaderVC") as? PDFReaderVC
        let resource = resources[indexPath.row]
        if resource.fileExtension == "pdf"{
            pdfVC?.resource = resource
             self.navigationController?.pushViewController(pdfVC!, animated: true)
        }else{
            let config = FolioReaderConfig()
            config.scrollDirection = .vertical
            let bookPath = Bundle.main.path(forResource: resource.title, ofType: resource.fileExtension)
            let folioReader = FolioReader()
            folioReader.presentReader(parentViewController: self, withEpubPath: bookPath!, andConfig: config)
        }
        
       
    }
    
    
}
