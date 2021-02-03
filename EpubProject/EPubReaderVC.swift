//
//  ViewController.swift
//  EpubProject
//
//  Created by michelle on 2021/2/2.
//

import UIKit
import FolioReaderKit

class EPubReaderVC: FolioReaderContainer {
    
    var resource: Resource!
    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        let config = FolioReaderConfig()
//        config.scrollDirection = .horizontalWithVerticalContent
//
//        guard let bookPath = Bundle.main.path(forResource: resource.title, ofType: resource.fileExtension) else { return }
//        setupConfig(config, epubPath: bookPath)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("epubPath: \(self.epubPath)")
        
//        guard let bookPath = epub.bookPath else {
//            return
//        }
//
//        let readerConfiguration = self.readerConfiguration(forEpub: epub)
//        folioReader.presentReader(parentViewController: self, withEpubPath: bookPath, andConfig: readerConfiguration, shouldRemoveEpub: false)
    }


}

