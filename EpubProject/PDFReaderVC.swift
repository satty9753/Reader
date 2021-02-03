//
//  PDFReaderVC.swift
//  EpubProject
//
//  Created by michelle on 2021/2/3.
//

import UIKit
import PDFKit

class PDFReaderVC: UIViewController {
    @IBOutlet weak var pdfView: PDFView!
    var resource: Resource!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let pdfPath = Bundle.main.url(forResource: resource.title, withExtension: resource.fileExtension) else { return }
        let pdfDocument = PDFDocument(url: pdfPath)
        pdfView.document = pdfDocument
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
