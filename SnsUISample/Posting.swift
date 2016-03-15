//
//  Posting.swift
//  SnsUISample
//
//  Created by 中垣 健志 on 2016/03/16.
//  Copyright © 2016年 itvirtuoso. All rights reserved.
//

import Foundation

class Posting {
    let avatar: String
    let name: String
    let date: String
    let content: String
    
    private static func createAvatar() -> String {
        let avatars = ["avatar01.png", "avatar02.png", "avatar03.png", "avatar04.png", "avatar05.png"]
        return avatars[Int(arc4random_uniform(UInt32(avatars.count)))]
    }
    
    private static func createName() -> String {
        let names = ["夏目漱石", "樋口一葉", "福沢諭吉", "新渡戸稲造", "野口英世"]
        return names[Int(arc4random_uniform(UInt32(names.count)))]
    }
    
    private static func createDate() -> String {
        let dates = ["7:15", "10/01", "15:33", "水曜日", "2011/6/7"]
        return dates[Int(arc4random_uniform(UInt32(dates.count)))]
    }
    
    private static func createContent() -> String {
        let contents = [
            "吾輩は猫である。名前はまだ無い。\nどこで生れたかとんと見当がつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。この書生というのは時々我々を捕えて煮て食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。ただ彼の掌に載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始であろう。この時妙なものだと思った感じが今でも残っている。",
            "古池や 蛙飛び込む 水の音",
            "「天は人の上に人を造らず人の下に人を造らず」と言えり。されば天より人を生ずるには、万人は万人みな同じ位にして、生まれながら貴賤上下の差別なく、万物の霊たる身と心との働きをもって天地の間にあるよろずの物を資り、もって衣食住の用を達し、自由自在、互いに人の妨げをなさずしておのおの安楽にこの世を渡らしめ給うの趣意なり。されども今、広くこの人間世界を見渡すに、かしこき人あり、おろかなる人あり、貧しきもあり、富めるもあり、貴人もあり、下人もありて、その有様雲と泥との相違あるに似たるはなんぞや。その次第はなはだ明らかなり。『実語教』に、「人学ばざれば智なし、智なき者は愚人なり」とあり。されば賢人と愚人との別は学ぶと学ばざるとによりてできるものなり。また世の中にむずかしき仕事もあり、やすき仕事もあり。"]
        return contents[Int(arc4random_uniform(UInt32(contents.count)))]
    }
    
    init() {
        self.avatar = Posting.createAvatar()
        self.name = Posting.createName()
        self.date = Posting.createDate()
        self.content = Posting.createContent()
    }
}
