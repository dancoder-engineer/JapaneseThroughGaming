# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#Lesson.destroy_all

User.create({
    userName: "a",
    password: "a",
    email: "a",
    gotHowFar: 1,
    paidHowFar: 50,
})

Lesson.create({
    title: "Star Ocean",
    isgame: true,
    })

Gamesection.create({
    lesson_id: 1,
    reviewtext: "Star Ocean, released July 19, 1996, was a true demonstration of what the Super Famicom was truly capable of. While it weighed in at a massive 6 megabytes, the game was actually much larger, and only fit on a cartridge double the size of Final Fantasy 6's due to graphics compression allowed by the S-DD1 chip. The chip was only ever used in two Super Famicom games (The other being Street Fighter Alpha 2,) thanks to the fact that the 32 bit era was rapidly picking up steam in 1996.||The story, heavly influenced by Star Trek, involves the crew of the 'federation' starship Calnus investgating a virus on Planet Roak. The Calnus crew is seen beaming down by natives of the less technologiclally advanced planet, running  afoul of the 'Underdeveloped Planet Preservation Pact.' The Roak natives initially think the Calnus crew are gods, but the Calnus crew explain otherwise. Eventually, both space travelers and Roakians alike go 300 years in the past, to a time where they're able to save the planet, eventually going back to the present and stopping 'Jie Revorse' and his genetically enhanced supermen from taking over the universe.||I joke, of course, but the game is incredible. It features a very cinematic, fully (English) voiced intro cutscene featuring Robert Belgrade, who would go on to voice Alucard in the English version of Castlevania: Symphony of the Night. The game also boasts an amazing soundtrack by Motoi Sakuraba which sounds higher quality than almost anything else on the system, a really fun action battle system, and gameplay systems that wouldn't become common until well into the Playstation's life (you like item creation systems? Thank Star Ocean.)||As for that item creation system, it’s very much a mixed bag. While it can be fun, there are a very small number of ultimate items that can be made only through that system. Nowhere in the game does it tell you the formulas, and some of the items used to make the better weapons and armor are either very expensive, or one of a kind, meaning its possible to use them up and make it so that you permeant lose the item you want to make. You can also fail at creating items, and if you fail, you lose the materials.||The music is one of the best aspects of the game. This is Motoi Sakuraba when he was actually trying, and the difference between the music here and the music in Tales of Arise is night and day. The compositions would've sounded good if the game were on PlayStation, let alone the Super NES. The battle system is action based, with the player controlling one character while the rest of the party fights by themselves. You can give orders to the party members not under your direct control, but there’s not much to the battle system. The main reason for that is the fact that almost all battles can be won simply by button mashing. Any battle that can’t be on by button mashing can be won by leveling up and then button mashing. There’s also a fairly deep skill system, where skill points, earned on level up, can be used to purchase stat increases, the ability to better make use of the game’s deep item creation system, or new moves in battle.||Honestly, Star Ocean is one of the most impressive games on the SNES, and a small glimpse of what other games could've been if they released that CD addon. The second half had to be scaled back (and that content was not all added back in the remake,) but what's there is a gem on the Super Famicom that shows why people still care about the series to this day.",
    screenshoturls: "https://i.imgur.com/2ivwFoq.png||https://i.imgur.com/Dwt4Hgg.png||https://i.imgur.com/PJnmSNR.png",
	screenshottext: "The main character's name is Ratix. This was changed in the American localization because they didn't want everyone to go all Phantasmagoria 2 and start nicknaming him Ratboy. The original version of the game allows you to give the characters nicknames (which was cut out of all language versions of the PSP remake,) so you can nickname him Ratboy in the game itself if you so choose.||In this scene, everyone finds out that Dorn (named after Star Trek: TNG's Michael Dorn) has the virus, Bonus Japanese lesson: 感染する　(かんせんする) means 'to get infected.'||Many environments in this game have a cel-shaded look, quite rare on the Super Famicom, but very beautiful and appreciated.",
})

Release.create({
    gamesection_id: 1,
    system: "Super Famicom",
    date: "July 19, 1996"
})

Release.create({
    gamesection_id: 1,
    system: "PSP",
    date: "December 27, 2007"
})

Release.create({
    gamesection_id: 1,
    system: "PS4/Switch",
    date: "December 5, 2019"
})

Cover.create({
    front: "https://i.imgur.com/mQfORh2.jpg", 
    back: "https://i.imgur.com/3lrO1Bd.jpg",
    titlescreen: "https://i.imgur.com/Sm4XLfb.png",
    gamesection_id: 1
})

Otherpic.create({
    pic: "https://i.imgur.com/xjJqjCu.jpg",
    caption: "My original copy of the game, bought back when I was in high school. I still find myself more impressed by a game that does more with less powerful hardware than one that looks mediocre on better hardware. For example, Madara for Famicom impresses me, but Madara 2 on Super Famicom always looked boring to me.",
    cover_id: 1
})

Otherpic.create({
    pic: "https://i.imgur.com/37iDJJX.jpg",
    caption: "The cartridge. Note that Tri-Ace misspelled the name of their own company.",
    cover_id: 1
})





Japanesesection.create({
    lesson_id: 1,
    lessontitle: "Strong Commands",
    shortdescription: "Verb + な！",
    screenshot: "https://i.imgur.com/imtz3jG.jpg",
    howtomake: "Verb dictionary form + な！",
    japanesecopy: "In order to make a strong command, just take the dictionary form of the verb and add な. For example, our sample sentence is さわるな！ In this case, Milly wants to touch Dorn because he is having trouble standing, but if she does this, he will get infected with a virus that will turn her to stone. He uses this grammar point to communicate the grave importance of his command.",

})




Example.create({
    title: "",
    box: "",
    kanji: "",
    nokanji: "さわるな！",
    english: "Don't touch me!!",
    japanesesection_id: 1
})

Example.create({
    title: "Tales of Hearts",
    box: "https://www.mobygames.com/images/covers/l/410532-tales-of-hearts-anime-movie-edition-nintendo-ds-front-cover.jpg",
    kanji: "みんな、油断するなよ！",
    nokanji: "みんな、ゆだんするなよ！",
    english: "Everyone! Don't let your guard down!",
    japanesesection_id: 1
})

Example.create({
    title: "Aqutallion",
    box: "http://www.videogameden.com/sfc/cover/aqt.jpg",
    kanji: "",
    nokanji: "にょうぼが　どうしたって？ ふざけるな！",
    english: "What're you saying happened with my wife!? Don't screw with me!",
    japanesesection_id: 1
})

Vocabword.create({
    kanji: "触る",
    nokanji: "さわる",
    english: "Touch",
    japanesesection_id: 1
    
})

Vocabword.create({
    kanji: "油断する",
    nokanji: "ゆだんする",
    english: "Let your guard down",
    japanesesection_id: 1
    
})

Vocabword.create({
    kanji: "女房",
    nokanji: "にょうぼう",
    english: "Your own wife",
    japanesesection_id: 1
    
})


################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################


Lesson.create({
    title: "Tales of Destiny",
    isgame: true
})

Gamesection.create({
    lesson_id: 2,
    reviewtext: "Tales of Destiny is the second title in the Tales series. Coming two years after the first one, and possibly being moved from Nintendo 64 (there were rumors of ‘Tales of Phantasia 2’ for N64 at one point, but it never materialized, and there doesn't seem to be any concrete information about this. The game has some high points, and some really low points.||The highest point is that it has one of the greatest game soundtracks ever made. Almost every song is worth listening to, which is a major feat as for as video game soundtracks go, especially among the Tales series, where soundtracks consist about 20% good songs and 80% filler.||Some of the low points are the battle system, which is pretty much just lifted straight out of Tales of Phantasia and has not aged well to the point where if you play the original Tales of Destiny (we'll get to the remake in a bit) after playing most Tales games that came after it, the game is pretty much unplayable. Couple that with an absolutely insane random encounter rate, and you have a game that's a flat out chore to play.||Even with this mixed bag of elements throughout, the game also varies in quality depending on how far into it you get.||The first half of the game is incredible, giving you one of the Tales series's best casts on an adventure to recover a powerful artifact known as the Eye of God (or Atamoni depending on which version of the game you're playing) before it can be used to take over the world.||The pacing takes a major hit in the second half. While the story itself remains good, bringing the villains into focus and giving them good motivations, the game becomes a major chore to play. After a certain emotional scene about halfway through, you go to a second world map and the game becomes more of a dungeon crawler where the dungeons aren't very fun to play.||Most of them take the form of transporter mazes where you have to go up and down just to find the way to the end, occasionally broken up by puzzles, and there are far too many dungeons, the sheer number of which makes the plot feel like it stops short. For example, let's look at the first mission in this area, go to a dungeon and do a thing (no spoilers.) Instead of going onto a world map, into the dungeon, finishing it and going back to where you started, you have to:||1. Go through a section of a world map, which is so much of a maze, it may as well be a mini dungeon in itself.||2. Go through one dungeon to teleport to another||3. Go through that dungeon to get back to the world map||4. Go through another mini dungeon on the world map||5. Finally get to the dungeon you were aiming for.||That's essentially five dungeons where one would've done the trick nicely, and the game continues like this for at least a quarter of its total time!||The remake, which came out as the last Tales game on the PlayStation 2, released right in the middle of the series’ golden age, gives us some new plot elements, as well as skits and a totally new battle system. The battle system completely does away with TP, rather focusing on what you can do in individual combos by having moves use CC, a new type of TP which recovers after each combo. The battle system is really fun, so that fixes that problem from the original. If only the rest of the original's problems were fixed as well.||The pacing issues? Still there in their entirety. The new battle system makes the second half less of a slog, but it's still a slog due to the fact that the dungeons are still the same mazes of transporters. There are new puzzles here and there, but the dungeons really haven't changed much, which is a huge negative in this game.||There is a Director's Cut of the remake, which adds ‘Leon Side,’ a mode where you play the first half of the story with Leon as the main character, and stops right before the second half of the game starts. It won't give you the full story of the game, but it will give you a full story with a beginning, middle, and end which stops before the game gets annoying, and is therefore probably the best way to play the game.||Tales of Destiny can be a joy to play, but at times is also a massive pain. If the story grabs you enough, it can be worth forcing yourself through the second half of the game to see how things turn out, but otherwise the second half is just gonna sap your patience.||Fun Fact: Hikaru Midorikawa, the voice actor for the anti-social Leon also did the voice of Hiro in the 32-bit remake of Lunar 2. Guy's got range.",
    screenshoturls: "https://i.imgur.com/87xpWxF.png||https://i.imgur.com/t2vNONX.png||https://i.imgur.com/QfMUVSc.png",
    screenshottext: "You know it's time for some serious therapy when you have to call your father -sama.||The battle system in this game is seriously great. So great, in fact, that they used a slightly modified version for Tales of Hearts. Unfortunately, it wasn't good enough to keep in the Vita remake of Tales of Hearts.||Tales of Destiny's cast has always been it's greatest asset, and the remake adds tons of new interactions to make this aspect of the game even better. From tons of new skits to new story scenes that really flesh out these characters, they did a great job here.",
})

Release.create({
    gamesection_id: 2,
    system: "PlayStation 1",
    date: "December 23, 1997"
})

Release.create({
    gamesection_id: 2,
    system: "PlayStation 2",
    date: "November 30, 2006"
})

Release.create({
    gamesection_id: 2,
    system: "PlayStation 2 (Director's Cut)",
    date: "January 31, 2008"
})





Cover.create({
    front: "https://i.imgur.com/gHcg7pM.jpg", 
    back: "https://i.imgur.com/Ant6vjY.jpg",
    titlescreen: "https://imgur.com/r3MjlBV.png",
    gamesection_id: 2
})

Otherpic.create({
    pic: "https://imgur.com/cshAb8Z.jpg",
    caption: "The limited edition of the Director's Cut comes with an artbook, as well as a CD of arranged music from all over the Tales series. It's a really nice set.",
    cover_id: 2
})

Otherpic.create({
    pic: "https://i.imgur.com/37iDJJX.jpg",
    caption: "You may mock me for keeping this 1998 calendar around, but when the days line up again in 2026, it'll be usable again. Also the art is really lovely.",
    cover_id: 2
})








Japanesesection.create({
    lesson_id: 2,
    lessontitle: "Using multiple adjectives to describe something",
    shortdescription: "Adj + くて/で",
    screenshot: "https://i.imgur.com/DXfCEAH.jpg",
    howtomake: "い adj: Remove い and add くて||な adj: Add で",
    japanesecopy: "Squeeeee! Isn't Leon just sooooooo dreamy?||We're gonna use this to learn how to use two or more adjectives at once to describe something. There are two types of adjectives, and luckily this sentence uses the grammar of both.||The two that get connected are ずうずうしい and のつえんき（な）.||For -い adjectives, we just change that last い to くて,||          ずうずうしい -> ずうずうし ->  ずうずうしくて||And for な adjectives, we use で instead of な||          のうてんき -> のうてんきで",

})







Example.create({
    title: "",
    box: "",
    kanji:"僕はおまえのように、図々しくて、能天気で、馴れ馴れしい奴が大嫌いだ。",
    nokanji: "ぼくはおまえのように、ずうずうしくて、のうてんきで、なれなれしいやつがだいきらいいだ。",
    english: "I really hate brazen, laid back, and over-familiar guys like you!",
    japanesesection_id: 2
})

Example.create({
    title: "Chrono Cross",
    box: "https://www.chronocompendium.com/images/wiki/5/59/Chrono_Cross_Japanese_box_art.jpg",
    kanji: "心細くて、か弱くて、かわいい 旅の娘が、同行してくれって言ってんだぜ？",
    nokanji: "こころぼそくて、かよわくて、かわいい たびのむすめが、どうこうしてくれっていってんだぜ？",
    english: "Are you saying you'll take along this helpless, weak, and cute traveling girl?",
    japanesesection_id: 2
})

Example.create({
    title: "Aqutallion",
    box: "http://www.videogameden.com/sfc/cover/aqt.jpg",
    kanji: "",
    nokanji: "このまちを　ぜったい おそわれる　まえいじょうの きれいで　かっこいいまちに　するからね！",
    english: "Let's make this town even more beautiful and cooler than ever before!",
    japanesesection_id: 2
})



Vocabword.create({
    kanji: "図々しい",
    nokanji: "ずうずうしい",
    english: "Brazen",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "能天気",
    nokanji: "のうてんき",
    english: "Laid back",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "馴れ馴れしい",
    nokanji: "なれなれしい",
    english: "Overly familiar",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "心細い",
    nokanji: "こころぼそい",
    english: "Helpless",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "か弱い",
    nokanji: "かよわい",
    english: "Weak",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "襲う",
    nokanji: "おそう",
    english: "Attack",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "以上",
    nokanji: "いじょう",
    english: "More than",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "",
    nokanji: "かっこいい",
    english: "Cool",
    japanesesection_id: 2
})


################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################


Lesson.create({
    title: "The Legend of Zelda: Link's Awakening",
    isgame: true
})

Gamesection.create({
    lesson_id: 3,
    reviewtext: "The Legend of Zelda: Link's Awakening (The Dreaming Island in Japan, see the Japanese lesson for further details on that,) is one of the best games the Zelda series has ever produced. The reason for this is fairly obvious, while most games are produced as someone's 9-5 job, this one was a labor of love. The team behind it developed the game after work while working on other things during the day, and the fun they had working on it comes across while playing it. This sort of development also happened on another game that's considered a masterpiece, Mega Man 2.||The story involves the same Link from Link to the Past getting shipwrecked on an island to the south of Hyrule, where he can't leave unless he wakes the island's deity, known as the Wind Fish. The story takes a major turn around Level 6 that recontextualizes everything and forces Link to make a major decision about the right way to proceed, culminating in an ending with levels of emotion you didn't really see in 8-bit RPGs (except Final Fantasy Adventure.)||Of course, the best thing about this game's story are the individual characters you'll meet along the way and the cool moments that stick with you. For example, if you can't afford the (really expensive) bow, you can steal it from the shop. If you do this, the next time you go into the store, the store owner will zap you with lightning, killing you outright, and everyone in the game will call you THIEF instead of your name.||Back in 1993, when you bought a handheld game, you tended to get a scaled down version of its home console equivalent. This is, of course, because of a major difference in technology between a 4 color Game Boy and a 16-bit powerhouse Super NES. Link's Awakening, however, does not scale down the gameplay of Link to the Past at all. Because of this, Link's Awakening easily qualifies as a top 10 Game Boy game. The game is even loved enough to have gotten a remake on the Switch, which is something no one would have guessed would happen.||The not toned down gameplay did have one caveat, however. If you ask most people what Link's Awakening's major drawback is, they'll tell you that you have to switch items a lot. While this can be annoying, this was unavoidable. In Link to the Past, you had three action buttons in game: A sword button, an button that lets you use an item of your choosing, and one that has many common actions mapped to it (lifting items, dashing etc.) The Game Boy only had two buttons to work with, so they made both of them use items that you select, and made the sword, the dash boots, the power glove, and many others items that you map to those buttins at will. This forces the player to open the menu and switch items far more than in other Zelda games, which can be annoying, but was a fair compromise, and honestly the only way they could've made this game without scaling back the gameplay to Zelda 1 levels.||The soundtrack by Kazumi Totaka, Minako Hamano, and Kozue Ishikawa is excellent, boasting many amazing tracks. Highlights include the Face Shrine, the Wind Fish's Egg, and of course the Ballad of the Wind Fish (which even got lyrics in the Switch remake.) The only weak link is the Angler's Tunnel theme. Back in the day, I was really enjoying the level themes, and by the time I was going for level 4, I was looking forward to them. Then I entered level 4 and heard a sped up version of the cave theme. This was probably one of the most disappointing musical experiences of my young life. It's only one song, but the disappointment was memorable enough to leave an impression on me.||Link's Awakening is a true classic, and deserves to be played by any fan of the Zelda series, whether they were born in 1993 or not. And for my fellow old geezers, the game is 28 years old now, so there many Zelda fans that weren't born when we were screwing up our eyesight for life staring at that unlit 4 color screen for hours on end.||And one more thing, the next time you're playing Ocarina of Time, don't forget to lose to the final boss so that this and Link to the Past (the best Zelda games) come to pass.",
    screenshoturls: "https://i.imgur.com/qHQd8pR.png||https://i.imgur.com/HbJNu5I.png||https://i.imgur.com/G0eOI0v.png",
    screenshottext: "No!!! Not the owl!!! Aaaaah, shut up, shut up, SHUT UP!!!!! Actually, he's not as annoying in this game. He serves more as a form of exposition than one of obnoxious tutorials.||Stealing in this game is one of the more memorable cheats in gaming, due to the fact that it has interesting consequences. Of course, I also wonder if this shopkeeper is in the mafia with the way he treats people who steal from him.||This game did the Nintendo characters crossover thing way before Smash. You'll Yoshi, Mario, and even a visitor from SimCity.",
})

Release.create({
    gamesection_id: 3,
    system: "Game Boy",
    date: "June 6, 1993"
})

Release.create({
    gamesection_id: 3,
    system: "Game Boy Color",
    date: "December 12, 1998"
})

Release.create({
    gamesection_id: 3,
    system: "Switch",
    date: "September 20, 2019"
})

Cover.create({
    front: "https://i.imgur.com/Xe9W0pP.jpg", 
    back: "https://imgur.com/7qIzY4Z.jpg",
    titlescreen: "https://imgur.com/HAKRjFU.jpg",
    gamesection_id: 3
})

Otherpic.create({
    pic: "https://imgur.com/f5uyish.jpg",
    caption: "Despite being made all the way back in 1993, in 'creamed spinach color' (in the immortal words of the competition's advertising,) Link's Awakening stands as a strong competitor for the title of best Zelda game to this day.",
    cover_id: 3
})


Otherpic.create({
    pic: "https://imgur.com/s1Yto6a.jpg",
    caption: "The coloring in this picture from the manual seems muted, almost faded, but upon finishing the game, you realize just how appropriate that is.",
    cover_id: 3
})



Japanesesection.create({
    lesson_id: 3,
    lessontitle: "Relative Clauses",
    shortdescription: "V dict. form + N",
    screenshot: "https://i.imgur.com/4WUH9I7.jpg",
    howtomake: "Verb phrase ending in dictionary form + Noun",
    japanesecopy:"For this Japanese lesson, we don't have to play far, because we're using the game's title itself! That title being 夢を見る島　(ゆめをみる　しま.) This may look strange if you've never seen the grammar before, but it's not that hard. This is actually a relative clause.||This is actually really simple. The title means 'The island THAT dreams.' Note that we start the phrase with THAT (or who or which) in English. What we do in Japanese is we take out the word that starts the relative clause, and move everything after it to the beginning of the noun phrase, changing any verbs to their dictionary or short forms (we don't use the ました form for example, just the た form for past tense.)||For example, for 'The Island that Dreams,' we:||Remove the preposition ‘The Island     Dreams’||Move everything after to it to the beginning ‘Dreams   The Island’||Translate this to Japanese, making sure to use the dictionary form of the verb ‘ゆめをみる　しま.’",
})





Example.create({
    title: "",
    box: "",
    kanji:"夢を見る島",
    nokanji: "ゆめをみるしま",
    english: "The Island that Dreams",
    japanesesection_id: 3
})

Example.create({
    title: "Romancing SaGa 3",
    box: "https://upload.wikimedia.org/wikipedia/en/e/ee/Rmns3box.jpg",
    kanji:"破壊するもの",
    nokanji: "はかいするもの",
    english: "Destroyer",
    japanesesection_id: 3
})

Example.create({
    title: "Akumajou Densetsu",
    box: "https://upload.wikimedia.org/wikipedia/en/9/95/Castlevania_III_Dracula%27s_Curse.jpg",
    kanji:"真正バンパイアハンターとよばれる　ベルモンド家...",
    nokanji: "しんせいバンパイアハンターとよばれる　ベルモンドか...",
    english: "The Belmondo family, who are called true vampire hunters...",
    japanesesection_id: 3
})

Vocabword.create({
    kanji: "夢",
    nokanji: "ゆめ",
    english: "Dream (noun)",
    japanesesection_id: 3
})

Vocabword.create({
    kanji: "夢を見る",
    nokanji: "ゆめをみる",
    english: "Dream (verb) *note the verb used is ‘see.’",
    japanesesection_id: 3
})

Vocabword.create({
    kanji: "破壊する",
    nokanji: "はかいする",
    english: "Destroy",
    japanesesection_id: 3
})

Vocabword.create({
    kanji: "物",
    nokanji: "もの",
    english: "Thing (nonliving)",
    japanesesection_id: 3
})

Vocabword.create({
    kanji: "者",
    nokanji: "もの",
    english: "Thing (living)",
    japanesesection_id: 3
})

Vocabword.create({
    kanji: "真正",
    nokanji: "しんせい",
    english: "True",
    japanesesection_id: 3
})

Vocabword.create({
    kanji: "呼ぶ",
    nokanji: "よぶ",
    english: "Call",
    japanesesection_id: 3
})


################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################


Lesson.create({
    title: "Pocket Monsters Blue",
    isgame: true
})

Gamesection.create({
    lesson_id: 4,
    reviewtext: "So, it's a Pokémon game this time. You certainly don't need me to tell you about this one, so instead of a mini-review I'll just talk about my own personal experiences with this series, along with giving a couple fun facts about the game you might not know.||I did not grow up with Pokémon, since it didn't come out in America until I was already in college. I did grow up with older Game Boy RPGs, such as Great Greed and the Final Fantasy Legend games, all of which I still love to this day, so when this hot new Game Boy RPG came out, I was down!||The quirky NPCs reminded me very much of Earthbound, and the gameplay was fun. I did really enjoy the game, especially since it gave me one of my earliest tastes of how we would use the Nintendo Switch. At the time, I had a Super Game Boy in addition to my handheld Game Boy. I would play the game at school between my classes, then bring it home, pop the cart in my Super NES, and play some more. This wasn't the very first time I would enjoy a game this way (I played Phantasy Star 4 half on vacation and half at home about a year prior,) and I loved the experience of having that versatility.||I do have one major issue with the Pokémon series, and it haunted me through my initial playthrough of Red, and then happened again when I played Platinum (the next entry I would get very far in,) and for the same reason. That reason is that it's too easy to screw yourself over near the end. Of course, the game isn't unwinnable, but it's very easy to get through the game with a team that's wholly inadequate for the Elite 4. I don't remember what my team in Red was, but I do remember that I was pretty ok in Platinum, except for the fact that I didn't have any Pokémon that could go up against a particularly difficult Pokémon at the end. I would've had to catch a Tentacruel and grind it for about 5-10 hours, and I wasn't willing to do that, so I stopped playing.||I have since played SoulSilver and Black, and finished those, and I managed to finish both, but only because I looked up a Let's Play of the games and used the same team the LPer did. This doesn't seem to me the way the games should be played, and they would be a lot more fun if it weren't so easy to necessitate a grind near the end, so this fact does knock the games' quality down several notches in my book.||Now that you think I suck at Pokémon, let's get to the fun facts. First is a bit of a misnomer about the series. Many people see 'Pokémon Blue' and think that it's exactly the same as the US Blue. It isn't. When the games were initially released in Japan, Red and Green were the first two that came out. Eight months later, Pokémon Blue, the first 'third version' came out, boasting new Pokémon graphics and some new text. The way the US releases were handled is to take the new graphics and script of Japanese blue and put them into Japanese red and green, and then rename green to blue. The names were kept the same as Japanese when FireRed and LeafGreen rolled around, rather than renaming the latter WaterBlue or some such.||Also in the anime, Ash and Gary were named after real people. Ash was Satoshi, named after Pokémon creator Satoshi Tajiri, and Gary is Shigeru, named after Shigeru Miyamoto. I guess Tajiri needed a rival, and appropriately enough for someone wanting to be the every best like no one ever was, he picked the person who might well be the greatest game creator of all time.||I do not have a complete copy of Japanese blue, but what you're seeing in that picture is a special box set sold when the Pokémon games went on sale on the 3ds eShop. It comes with a map of Kanto and a few other goodies. That card you see there has a code on the back redeemable for a download.",
    screenshoturls: "https://i.imgur.com/T329yxN.png||https://i.imgur.com/C9P83Yq.png||https://i.imgur.com/EIhvQYs.png",
    screenshottext: "The world of the localized Pokemon games seems to be slightly more technologically advanced than its Japanese counterpart. In Japanese, the main character has a Famicom, but the localization upgrades it to a Super NES.||See how I chose Charmander here? Never do that! The first major boss will be way too difficult if you do!||This old man is drunk in the Japanese version, and he can't move until he sobers up.",
    })

Release.create({
    gamesection_id: 4,
    system: "Game Boy",
    date: "October 10, 1999"
})


Release.create({
    gamesection_id: 4,
    system: "3ds",
    date: "February 27, 2016"
})


Release.create({
    gamesection_id: 4,
    system: "",
    date: ""
})

Cover.create({
    front: "https://i.imgur.com/gg15Wzi.jpg", 
    back: "https://imgur.com/kVL9FlD.jpg",
    titlescreen: "https://imgur.com/6blzeE9.jpg",
    gamesection_id: 4
})

Otherpic.create({
    pic: "https://imgur.com/a06rT03.jpg",
    caption: "The physical edition of the 3ds version comes with a magnet that looks like the original cartridge, a copy of the map that originally came with the game, some stickers that look like the descriptions of the started Pokemon in the original manual, and a download card.",
    cover_id: 4
})

Otherpic.create({
    pic: "https://imgur.com/xvFvlD0.jpg",
    caption: "The town map, all folded out.",
    cover_id: 4
})




Japanesesection.create({
    lesson_id: 4,
    lessontitle: "Something is Easy",
    shortdescription: "Verb stem + やすい",
    screenshot: "https://i.imgur.com/Sl56HZd.jpg",
    howtomake: "Verb stem + やすい",
    japanesecopy: "Guess what line we're doing for this game. Come on, you knew it even before you looked at the screenshot. Say it with me now, ‘Hi! I like shorts! They're comfy and easy to wear!’ Or, more literally ‘Shorts are easy to move around in and good! You should wear them, as well.'||Don't worry about the grammar of that last line, we'll come back to that in a later lesson where I'll refer back to this game as an extra example. For this, I want to focus on how to say something is easy to do.||The line is ‘たんパン　うごき やすくって　いいぜ！　おまえも　はけば？’ The part of the sentence that means ‘Easy to move around in’ is うごき やすくって. This is an adjective conjugation, recall our lesson from Tales of Destiny, where the い at the end of an adjective becomes くて if you're connecting it to another adjective. This kid adds a っ just because he's speaking a little funny.||So, if you wanted to say ‘easy to move around in,’ you'd deconjugate this to うごき やすい. In order to make this from any verb, we take the verb stem (the masu form minus the masu,) and add やすい. Of course we can conjugate this like any other adjective (うごき やすくない, うごき やすかった etc.)",
})

Example.create({
    title: "",
    box: "",
    kanji:"",
    nokanji: "たんパン　うごき やすくって　いいぜ！　おまえも　はけば？",
    english: "Shorts are easy to move around in and good! What if you wore them, too?",
    japanesesection_id: 24
})

Example.create({
    title: "Oni 2",
    box: "https://gamefaqs.gamespot.com/a/box/2/5/1/306251_front.jpg",
    kanji:"",
    nokanji: "ほくせいのもりは まよいやすい",
    english: "The forest to the northwest is easy to get lost in",
    japanesesection_id: 4
})

Example.create({
    title: "Legend of Heroes 3",
    box: "https://media1.nin-nin-game.com/23227-pos_thickbox/shiroki-majo-mouhitotsu-no-eiyuu-densetsu-saturn-used-good-condition-en.jpg",
    kanji: "神官長さまのお話は 本当にわかりやすいわ。",
    nokanji: "しんかんさまの　おはなしは　ほんとうに　やかりやすいわ.",
    english: "The head priest's speeches are really easy to understand.",
    japanesesection_id: 4
})

Vocabword.create({
    kanji: "履く",
    nokanji: "はく",
    english: "Wear (on your legs or feet)",
    japanesesection_id: 4
})

Vocabword.create({
    kanji: "動く",
    nokanji: "うごく",
    english: "Move",
    japanesesection_id: 4
})

Vocabword.create({
    kanji: "北西",
    nokanji: "ほくせい",
    english: "Northwest",
    japanesesection_id: 4
})

Vocabword.create({
    kanji: "森",
    nokanji: "もり",
    english: "Forest",
    japanesesection_id: 4
})

Vocabword.create({
    kanji: "迷う",
    nokanji: "まよう",
    english: "Get lost",
    japanesesection_id: 4
})

Vocabword.create({
    kanji: "神官",
    nokanji: "しんかん",
    english: "Priest",
    japanesesection_id: 4
})


################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################
################################################################################################


Lesson.create({
    title: "Quiz #1",
    isgame: false
})

Japanesesection.create({
    lesson_id: 5,
    lessontitle: "",
    shortdescription: "",
    screenshot: "",
})

Gamesection.create({
    lesson_id: 5
})

Cover.create({
    front: "", 
    back: "",
    titlescreen: "",
    gamesection_id: 5
})

Quiz.create({})

Question.create({
    quiz_id: 1,
    ques: "Don't eat the rotten sushi!",
    choice1: "腐った寿司を食べて死ね！||くさった　すしを　たべて　しね！",
    choice2: "腐った寿司を食べるな||くさった　すしを　たべるな！",
    choice3: "おいしい寿司を食べるな！||おいしい　すしを　たべるな！",
    choice4: "へたくそで作った寿司をどうぞ。||へたくそで　つくった　すしを　どうぞ。",
    correctChoice: "B"
})

Question.create({
    quiz_id: 1,
    ques: "Don't choose Charmander (hitokage,) because Brock (Takeshi) will be too difficult.",
    choice1: "優しいゲームが好きじゃないから、ヒトカゲを選ぶよ！||やさしい　ゲームが　すきじゃない　から、ヒトカゲを　えらぶよ！",
    choice2: "ジュンサーさん、タケシはいくら面倒くさくても、逮捕するな！||ジュンサーさん、タケシは　いくら　めんどうくさくても、たいほするな！",
    choice3: "タケシは難しいから　ヒトカゲを選ぶなよ！||タケシは　むずかしい　から　ヒトカゲを　えらぶなよ！",
    choice4: "タケシ、急いでいるからナンパをするなよ！||タケシ、いそいでいる　から　ナンパを　するなよ！",
    correctChoice: "C"
})

Question.create({
    quiz_id: 1,
    ques: "My wife is a beautiful and kind person.",
    choice1: "女房はきれいで優しい人です。||にょうぼうは　きれいで　やさしい　ひとです。",
    choice2: "女房はきらいで優しくない人です。||にょうぼうは　きらいで　やさしくない　ひとです。",
    choice3: "女房の友達の方がきれいで優しい人です。||にょうぼうの　ともだちの　ほうが　きらいで　やさしい　ひとです。",
    choice4: "今の女房が一番醜いぜ！||いまの　にょうぼうが　いちばん　みにくいぜ！",
    correctChoice: "A"
})

Question.create({
    quiz_id: 1,
    ques: "These shorts are cute and cheap!",
    choice1: "このたんパンはダサいから安いです。||この　たんパンは　ダサい　から　やすいです。",
    choice2: "あなたが履いているたんパンはかわいい！買っていい？||あなたが　はいている　たんパンは　かわいい！かっていい？",
    choice3: "この私はどのたんパンを履いてもかわいい！||この　わたしは　どの　たんパンを　はいても　かわいい！",
    choice4: "このたんパンはかわいくて安いですね！||この　たんパンは　かわいくて　やすいですね！",
    correctChoice: "D"
})

Question.create({
    quiz_id: 1,
    ques: "The alcohol I drank last night was delicious.",
    choice1: "千九百九十八年飲んだお酒はおいしかったです。||せんきゅうひゃくきゅうじゅうはちねん　のんだ　おさけは　おいしかったです。",
    choice2: "昨日飲まなかったお酒はおいしかったです。||きのう　のまなかった　おさけは　おいしかったです。",
    choice3: "昨日飲んだお酒はおいしかったです。||きのう　のんだ　おさけは　おいしかったです。",
    choice4: "昨日飲んだお酒は毒でした。||きのう　のんだ　おさけは　どくでした。",
    correctChoice: "C"
})

Question.create({
    quiz_id: 1,
    ques: "The movie I saw last week was good!",
    choice1: "先週見た映画は楽しかったです！||せんしゅう　みた　えいがは　たのしかったです！",
    choice2: "先週見た映画の女優はべっぴんです！||せんしゅう　みた　えいがの　じょゆうは　べっぴんです！",
    choice3: "先週見た映画は変でした！||せんしゅう　みた　えいがは　へんでした！",
    choice4: "先週見たアニメは楽しかったです！||せんしゅう　みた　アニメは　たのしかったです！",
    correctChoice: "A"
})

Question.create({
    quiz_id: 1,
    ques: "This question is easy to understand.",
    choice1: "この質問の答えはＣです。||この　しつもんの　こたえは　Ｃです。",
    choice2: "この試験の答えは変ですね。||この　しけんの　こたえは　へんですね。",
    choice3: "この質問はわかりやすいです。||この　しつもんは　わかりやすいです。",
    choice4: "この質問はダメですから諦めるしかない。||この　しつもんは　ダメです　から　あきらめるしかない。",
    correctChoice: "C"
})

Question.create({
    quiz_id: 1,
    ques: "That computer is easy to use.",
    choice1: "あのパソコンは使いやすいです。||あの　パソコンは　つかいやすいです。",
    choice2: "あのパソコンは壊れやすいです。||あの　パソコンは　こわれやすいです。",
    choice3: "あのパソコンはアップルだから買うなよ！||あの　パソコンは　アップルだから　かうなよ！",
    choice4: "私のパソコンは高かったから、スイッチを買ったらよかった！||わたしの　パソコンは　たかかったから、スイッチを　かったらよかった！",
    correctChoice: "A"
})













=begin

Lesson.create({
    title: "",
    isgame: true
})

Gamesection.create({
    lesson_id: 2
})

Release.create({
    gamesection_id: 2,
    system: "",
    date: ""
})

Cover.create({
    front: "", 
    back: "",
    titlescreen: "",
    gamesection_id: 2
})

Otherpic.create({
    pic: "",
    caption: "",
    cover_id: 2
})

Paragraph.create({
    gamesection_id: 2,
    text: ""
})

Screenshot.create({
    url: "",
    caption: "",
    gamesection_id: 2
})

Japanesesection.create({
    lesson_id: 2,
    lessontitle: "",
    shortdescription: "",
    screenshot: "",
})

Howtomake.create({
    text:"",
    japanesesection_id: 2
})

Howtomake.create({
    text:"",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "",
    japanesesection_id: 2
})


Example.create({
    title: "",
    box: "",
    kanji:"",
    nokanji: "",
    english: "",
    japanesesection_id: 2
})

Vocabword.create({
    kanji: "",
    nokanji: "",
    english: "",
    japanesesection_id: 2
})

Quiz.create({})

Question.create({
    quiz_id: 1,
    ques: "",
    choice1: "",
    choice2: "",
    choice3: "",
    choice4: "",
    correctChoice: ""
})

=end