//
//  InterfaceController.swift
//  TTCheck-watchOS WatchKit Extension
//
//  Created by Juan Pablo on 11/28/17.
//  Copyright © 2017 Juan Pablo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    

    
    
    @IBOutlet var table: WKInterfaceTable!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        setTitle("Programación")
        table.setHidden(true)
    }
    
    override func willActivate() {
        super.willActivate()
        self.table.setHidden(false)
        self.setupTable()
        
    }
    func setupTable() {
        
        table.setNumberOfRows(10, withRowType: "tablecell")
        for i in 0 ..< 3 {
            let row = table.rowController(at: i) as! TableCell
            let _ = "programs[i]"
            let _ = "titulos"
            let _ = "date"
            let _ = "finish"
            row.labelCell.setText("Jota pe es capo")

        
            }
        }
    
//    override func didDeactivate() {
//        // This method is called when watch view controller is no longer visible
//        super.didDeactivate()
//    }

}

class TableCell: NSObject {
    
    @IBOutlet var labelCell: WKInterfaceLabel!
    
}
