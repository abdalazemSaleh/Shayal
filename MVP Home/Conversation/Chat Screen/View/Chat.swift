//
//  Chat.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-07-30.
//

import UIKit
import MessageKit
import InputBarAccessoryView

class Chat: MessagesViewController {

    // MARK: - Variables
    var messages = [Message]()
    let sender = Sender(photoURL: "",
                                senderId: "123",
                                displayName: "me")
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Abdalazem Saleh"
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
//        messageInputBar.delegate = self

        messages.append(Message(sender: sender, messageId: "123", sentDate: Date(), kind: .text("Hello world")))
        messages.append(Message(sender: sender, messageId: "123", sentDate: Date(), kind: .text("how are in my caht app wich you all good :)")))
        self.messagesCollectionView.reloadDataAndKeepOffset()
    }
}


extension Chat: MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    func currentSender() -> SenderType {
        self.sender
    }

    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }

    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
}

