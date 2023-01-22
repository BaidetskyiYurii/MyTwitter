//
//  TwitterDataHelper.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 04.11.2022.
//

import Foundation
import UIKit

final class TwitterDataHelper {
    static var shared = TwitterDataHelper()
    
    func mockAllNotificationsData() -> [TwitterTextCellModel] {
        let items = [
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security. ", userIcon: UIImage(named: "icon.user1") ?? UIImage()),
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security. ", userIcon: UIImage(named: "icon.user2") ?? UIImage()),
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security. ", userIcon: UIImage(named: "icon.user3") ?? UIImage()),
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack?", userIcon: UIImage(named: "icon.user4") ?? UIImage()),
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security. ", userIcon: UIImage(named: "icon.user1") ?? UIImage()),
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security. ", userIcon: UIImage(named: "icon.user2") ?? UIImage()),
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security. ", userIcon: UIImage(named: "icon.user3") ?? UIImage()),
            TwitterTextCellModel(isShowFullText: true, isFavourites: true, fullText: "🔥 Are you using WordPress and migrating to the JAMstack?", userIcon: UIImage(named: "icon.user4") ?? UIImage())
        ]
        return items
    }
    
    
    func mockAllMentionsData() -> [MentionsCellModel] {
        let items = [
            MentionsCellModel(isShowFullText: true, userName: "User1", userText: "Hey @theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @_vect_@glyphish !Check our our new article “Top Icons Packs and Resources for Web”. You are in!😎 👉  marianeee.com/blog/top-icons...", userIcon: UIImage(named: "icon.user1") ?? UIImage(), textImage: UIImage(named: "testImageCell") ?? UIImage(), photoInfo: "Top Icons Packs and Resources for Web flatlogic.com"),
            MentionsCellModel(isShowFullText: true, userName: "User2", userText: "Hey @theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @_vect_@glyphish !Check our our new article “Top Icons Packs and Resources for Web”. You are in!😎 👉  marianeee.com/blog/top-icons...", userIcon: UIImage(named: "icon.user2") ?? UIImage(), textImage: UIImage(named: "testImageCell") ?? UIImage(), photoInfo: "Top Icons Packs and Resources for Web flatlogic.com"),
            MentionsCellModel(isShowFullText: true, userName: "User3", userText: "Hey @theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @_vect_@glyphish !Check our our new article “Top Icons Packs and Resources for Web”. You are in!😎 👉  marianeee.com/blog/top-icons...", userIcon: UIImage(named: "icon.user3") ?? UIImage(), textImage: UIImage(named: "testImageCell") ?? UIImage(), photoInfo: "Top Icons Packs and Resources for Web flatlogic.com"),
            MentionsCellModel(isShowFullText: true, userName: "User4", userText: "Hey @theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @_vect_@glyphish !Check our our new article “Top Icons Packs and Resources for Web”. You are in!😎 👉  marianeee.com/blog/top-icons...", userIcon: UIImage(named: "icon.user4") ?? UIImage(), textImage: UIImage(named: "testImageCell") ?? UIImage(), photoInfo: "Top Icons Packs and Resources for Web flatlogic.com")
        ]
        return items
    }
    
    func mockFollowers() -> [Follower] {
        return [
            Follower(icon: "icon.user1", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user2", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user3", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user4", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user1", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user2", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user3", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user4", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user1", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user2", name: "Name1", userTagName: "@Name1"),
            Follower(icon: "icon.user3", name: "Name1", userTagName: "@Name1")
        ]
    }
    
    func mockPost() -> [Post] {
        return [
            Post(userName: "Maximmilian",
                 userIcon: "icon.user1",
                 userTagName: "@maxjacobson",
                 postTime: "·3h",
                 postMessage: "Y’all ready for this next post?",
                 commentNumber: 46,
                 retweetNumber: 18,
                 likeNumber: 363,
                 actionInfo: "Zack John liked",
                 actionInfoIcon: "icon.like",
                 isShowFullText: true),
            Post(userName: "Tabitha Potter",
                 userIcon: "icon.user2",
                 userTagName: "@mis_potter",
                 postTime: "·14h",
                 postMessage: "Kobe’s passing is really sticking w/ me in a way I didn’t expect. He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident. But the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
                 commentNumber: 7,
                 retweetNumber: 1,
                 likeNumber: 11,
                 actionInfo: "Kieron Dotson Retweeted",
                 actionInfoIcon: "icon.retweet",
                 isShowFullText: true),
            Post(userName: "Maximmilian",
                 userIcon: "icon.user1",
                 userTagName: "@maxjacobson",
                 postTime: "·3h",
                 postMessage: "Y’all ready for this next post?",
                 commentNumber: 46,
                 retweetNumber: 18,
                 likeNumber: 363,
                 actionInfo: "Zack John liked",
                 actionInfoIcon: "icon.like",
                 isShowFullText: true),
            Post(userName: "Tabitha Potter",
                 userIcon: "icon.user2",
                 userTagName: "@mis_potter",
                 postTime: "·14h",
                 postMessage: "Kobe’s passing is really sticking w/ me in a way I didn’t expect. He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident. But the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
                 commentNumber: 7,
                 retweetNumber: 1,
                 likeNumber: 11,
                 actionInfo: "Kieron Dotson Retweeted",
                 actionInfoIcon: "icon.retweet",
                 isShowFullText: true)
        ]
    }
    
    func mockMessages() -> [Message] {
        return [
            Message(userImage: "icon.user1" ,
                    userName: "AzizDjan",
                    userNickName: "@A_AzizDjan",
                    lateMessageAction: "You: You’re very welcome AzizDjan!",
                    messageDate: "12/2/19"),
            Message(userImage: "icon.user2" ,
                    userName: "Andrew Parker",
                    userNickName: "@andrewww_",
                    lateMessageAction: "You accepted the request",
                    messageDate: "12/2/19"),
            Message(userImage: "icon.user3" ,
                    userName: "Komol Kuchkarov",
                    userNickName: "@kkuchkarov",
                    lateMessageAction: "You accepted the request",
                    messageDate: "11/20/19"),
            Message(userImage: "icon.user4" ,
                    userName: "karennne",
                    userNickName: "@karennne",
                    lateMessageAction: "You: I would greatly appreciate if you could retweet this if you think its worthy :)",
                    messageDate: "11/2/19"),
            Message(userImage: "icon.user5" ,
                    userName: "Maximillian",
                    userNickName: "@maxjacobson",
                    lateMessageAction: "sent you a link: Hello Pixsellz",
                    messageDate: "11/2/19"),
            Message(userImage: "icon.user6" ,
                    userName: "AzizDjan",
                    userNickName: "@A_AzizDjan",
                    lateMessageAction: "You: You’re very welcome AzizDjan!",
                    messageDate: "12/2/18"),
            Message(userImage: "icon.user7" ,
                    userName: "Andrew Parker",
                    userNickName: "@andrewww_",
                    lateMessageAction: "You accepted the request",
                    messageDate: "12/2/18"),
            Message(userImage: "icon.user8" ,
                    userName: "Komol Kuchkarov",
                    userNickName: "@kkuchkarov",
                    lateMessageAction: "You accepted the request",
                    messageDate: "11/20/18"),
            Message(userImage: "icon.user4" ,
                    userName: "karennne",
                    userNickName: "@karennne",
                    lateMessageAction: "You: I would greatly appreciate if you could retweet this if you think its worthy :)",
                    messageDate: "11/2/18"),
            Message(userImage: "icon.user5" ,
                    userName: "Maximillian",
                    userNickName: "@maxjacobson",
                    lateMessageAction: "sent you a link: Hello Pixsellz",
                    messageDate: "11/2/18")
        ]
    }
    
}

