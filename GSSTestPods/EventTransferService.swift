//
//  EventTransferService.swift
//  GSSTool
//
//  Created by Trista on 2022/5/18.
//

import UIKit

protocol TransferEventType {
}

protocol TransferEventSendable {
    func send(event:TransferEventType)
}

protocol TransferEventReceivable {
    func receive(event:TransferEventType)
}

extension UIResponder : TransferEventSendable {
    func send(event:TransferEventType) {
        if let next = self.next as? TransferEventReceivable {
            next.receive(event: event)
        }else {
            self.next?.send(event: event)
        }
    }
    
}
