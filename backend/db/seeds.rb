# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Lesson.create({
    title: "Star Ocean",
    isgame: true
})

Gamesection.create({
    lesson_id: 1
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

Paragraph.create({
    gamesection_id: 1,
    text: "Star Ocean, released July 19, 1996, was a true demonstration of what the Super Famicom was truly capable of. While it weighed in at a massive 6 megabytes, the game was actually much larger, and only fit on a cartridge double the size of Final Fantasy 6's due to graphics compression allowed by the S-DD1 chip. The chip was only ever used in two Super Famicom games (The other being Street Fighter Alpha 2,) thanks to the fact that the 32 bit era was rapidly picking up steam in 1996."
})

Paragraph.create({
    gamesection_id: 1,
    text: "The story, heavly influenced by Star Trek, involves the crew of the 'federation' starship Calnus investgating a virus on Planet Roak. The Calnus crew is seen beaming down by natives of the less technologiclally advanced planet, running  afoul of the 'Underdeveloped Planet Preservation Pact.' The Roak natives initially think the Calnus crew are gods, but the Calnus crew explain otherwise. Eventually, both space travelers and Roakians alike go 300 years in the past, to a time where they're able to save the planet, eventually going back to the present and stopping 'Jie Revorse' and his genetically enhanced supermen from taking over the universe."
})

Paragraph.create({
    gamesection_id: 1,
    text: "I joke, of course, but the game is incredible. It features a very cinematic, fully (English) voiced intro cutscene featuring Robert Belgrade, who would go on to voice Alucard in the English version of Castlevania: Symphony of the Night. The game also boasts an amazing soundtrack by Motoi Sakuraba which sounds higher quality than almost anything else on the system, a really fun action battle system, and gameplay systems that wouldn't become common until well into the Playstation's life (you like item creation systems? Thank Star Ocean.)"
})
Paragraph.create({
    gamesection_id: 1,
    text: "As for that item creation system, it’s very much a mixed bag. While it can be fun, there are a very small number of ultimate items that can be made only through that system. Nowhere in the game does it tell you the formulas, and some of the items used to make the better weapons and armor are either very expensive, or one of a kind, meaning its possible to use them up and make it so that you permeant lose the item you want to make. You can also fail at creating items, and if you fail, you lose the materials."
})
Paragraph.create({
    gamesection_id: 1,
    text: "The music is one of the best aspects of the game. This is Motoi Sakuraba when he was actually trying, and the difference between the music here and the music in Tales of Arise is night and day. The compositions would've sounded good if the game were on PlayStation, let alone the Super NES. The battle system is action based, with the player controlling one character while the rest of the party fights by themselves. You can give orders to the party members not under your direct control, but there’s not much to the battle system. The main reason for that is the fact that almost all battles can be won simply by button mashing. Any battle that can’t be on by button mashing can be won by leveling up and then button mashing. There’s also a fairly deep skill system, where skill points, earned on level up, can be used to purchase stat increases, the ability to better make use of the game’s deep item creation system, or new moves in battle."
})

Paragraph.create({
    gamesection_id: 1,
    text: "Honestly, Star Ocean is one of the most impressive games on the SNES, and a small glimpse of what other games could've been if they released that CD addon. The second half had to be scaled back (and that content was not all added back in the remake,) but what's there is a gem on the Super Famicom that shows why people still care about the series to this day."
})

Screenshot.create({
    url: "https://i.imgur.com/2ivwFoq.png",
    caption: "The main character's name is Ratix. This was changed in the American localization because they didn't want everyone to go all Phantasmagoria 2 and start nicknaming him Ratboy. The original version of the game allows you to give the characters nicknames (which was cut out of all language versions of the PSP remake,) so you can nickname him Ratboy in the game itself if you so choose.",
    gamesection_id: 1
})

Screenshot.create({
    url: "https://i.imgur.com/Dwt4Hgg.jpg",
    caption: "In this scene, everyone finds out that Dorn (named after Star Trek: TNG's Michael Dorn) has the virus, Bonus Japanese lesson: 感染する　(かんせんする) means 'to get infected.'",
    gamesection_id: 1
})

Screenshot.create({
    url: "https://i.imgur.com/PJnmSNR.png",
    caption: "Many environments in this game have a cel-shaded look, quite rare on the Super Famicom, but very beautiful and appreciated.",
    gamesection_id: 1
})

Japanesesection.create({
    lesson_id: 1,
    lessontitle: "Strong Commands",
    shortdescription: "Verb + な！",
    screenshot: "https://i.imgur.com/imtz3jG.jpg"
})

Howtomake.create({
    text:"Verb dictionary form + な！",
    japanesesection_id: 1
})

Japanesecopyparagraph.create({
    text: "In order to make a strong command, just take the dictionary form of the verb and add な. For example, our sample sentence is さわるな！ In this case, Milly wants to touch Dorn because he is having trouble standing, but if she does this, he will get infected with a virus that will turn her to stone. He uses this grammar point to communicate the grave importance of his command.",
    japanesesection_id: 1
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
    lesson_id: 2
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




Paragraph.create({
    gamesection_id: 2,
    text: "Tales of Destiny is the second title in the Tales series. Coming two years after the first one, and possibly being moved from Nintendo 64 (there were rumors of ‘Tales of Phantasia 2’ for N64 at one point, but it never materialized, and there doesn't seem to be any concrete information about this. The game has some high points, and some really low points."
})
Paragraph.create({
    gamesection_id: 2,
    text: "The highest point is that it has one of the greatest game soundtracks ever made. Almost every song is worth listening to, which is a major feat as for as video game soundtracks go, especially among the Tales series, where soundtracks consist about 20% good songs and 80% filler."
})
Paragraph.create({
    gamesection_id: 2,
    text: "Some of the low points are the battle system, which is pretty much just lifted straight out of Tales of Phantasia and has not aged well to the point where if you play the original Tales of Destiny (we'll get to the remake in a bit) after playing most Tales games that came after it, the game is pretty much unplayable. Couple that with an absolutely insane random encounter rate, and you have a game that's a flat out chore to play."
})
Paragraph.create({
    gamesection_id: 2,
    text: "Even with this mixed bag of elements throughout, the game also varies in quality depending on how far into it you get."
})
Paragraph.create({
    gamesection_id: 2,
    text: "The first half of the game is incredible, giving you one of the Tales series's best casts on an adventure to recover a powerful artifact known as the Eye of God (or Atamoni depending on which version of the game you're playing) before it can be used to take over the world."
})
Paragraph.create({
    gamesection_id: 2,
    text: "The pacing takes a major hit in the second half. While the story itself remains good, bringing the villains into focus and giving them good motivations, the game becomes a major chore to play. After a certain emotional scene about halfway through, you go to a second world map and the game becomes more of a dungeon crawler where the dungeons aren't very fun to play."
})
Paragraph.create({
    gamesection_id: 2,
    text: "Most of them take the form of transporter mazes where you have to go up and down just to find the way to the end, occasionally broken up by puzzles, and there are far too many dungeons, the sheer number of which makes the plot feel like it stops short. For example, let's look at the first mission in this area, go to a dungeon and do a thing (no spoilers.) Instead of going onto a world map, into the dungeon, finishing it and going back to where you started, you have to:"
})
Paragraph.create({
    gamesection_id: 2,
    text: "1. Go through a section of a world map, which is so much of a maze, it may as well be a mini dungeon in itself."
})
Paragraph.create({
    gamesection_id: 2,
    text: "2. Go through one dungeon to teleport to another"
})
Paragraph.create({
    gamesection_id: 2,
    text: "3. Go through that dungeon to get back to the world map"
})
Paragraph.create({
    gamesection_id: 2,
    text: "4. Go through another mini dungeon on the world map"
})
Paragraph.create({
    gamesection_id: 2,
    text: "5. Finally get to the dungeon you were aiming for."
})
Paragraph.create({
    gamesection_id: 2,
    text: "That's essentially five dungeons where one would've done the trick nicely, and the game continues like this for at least a quarter of its total time!"
})
Paragraph.create({
    gamesection_id: 2,
    text: "The remake, which came out as the last Tales game on the PlayStation 2, released right in the middle of the series’ golden age, gives us some new plot elements, as well as skits and a totally new battle system. The battle system completely does away with TP, rather focusing on what you can do in individual combos by having moves use CC, a new type of TP which recovers after each combo. The battle system is really fun, so that fixes that problem from the original. If only the rest of the original's problems were fixed as well."
})
Paragraph.create({
    gamesection_id: 2,
    text: "The pacing issues? Still there in their entirety. The new battle system makes the second half less of a slog, but it's still a slog due to the fact that the dungeons are still the same mazes of transporters. There are new puzzles here and there, but the dungeons really haven't changed much, which is a huge negative in this game."
})
Paragraph.create({
    gamesection_id: 2,
    text: "There is a Director's Cut of the remake, which adds ‘Leon Side,’ a mode where you play the first half of the story with Leon as the main character, and stops right before the second half of the game starts. It won't give you the full story of the game, but it will give you a full story with a beginning, middle, and end which stops before the game gets annoying, and is therefore probably the best way to play the game."
})
Paragraph.create({
    gamesection_id: 2,
    text: "Tales of Destiny can be a joy to play, but at times is also a massive pain. If the story grabs you enough, it can be worth forcing yourself through the second half of the game to see how things turn out, but otherwise the second half is just gonna sap your patience."
})
Paragraph.create({
    gamesection_id: 2,
    text: "Fun Fact: Hikaru Midorikawa, the voice actor for the anti-social Leon also did the voice of Hiro in the 32-bit remake of Lunar 2. Guy's got range."
})




Screenshot.create({
    url: "https://i.imgur.com/87xpWxF.png",
    caption: "You know it's time for some serious therapy when you have to call your father -sama.",
    gamesection_id: 2
})

Screenshot.create({
    url: "https://i.imgur.com/t2vNONX.png",
    caption: "The battle system in this game is seriously great. So great, in fact, that they used a slightly modified version for Tales of Hearts. Unfortunately, it wasn't good enough to keep in the Vita remake of Tales of Hearts.",
    gamesection_id: 2
})

Screenshot.create({
    url: "https://i.imgur.com/QfMUVSc.png",
    caption: "Tales of Destiny's cast has always been it's greatest asset, and the remake adds tons of new interactions to make this aspect of the game even better. From tons of new skits to new story scenes that really flesh out these characters, they did a great job here.",
    gamesection_id: 2
})



Japanesesection.create({
    lesson_id: 2,
    lessontitle: "Using multiple adjectives to describe something",
    shortdescription: "Adj + くて/で",
    screenshot: "https://i.imgur.com/DXfCEAH.jpg",
})

Howtomake.create({
    text:"い adj: Remove い and add くて",
    japanesesection_id: 2
})

Howtomake.create({
    text:"な adj: Add で",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "Squeeeee! Isn't Leon just sooooooo dreamy?",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "We're gonna use this to learn how to use two or more adjectives at once to describe something. There are two types of adjectives, and luckily this sentence uses the grammar of both.",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "The two that get connected are ずうずうしい and のつえんき（な）.",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "For -い adjectives, we just change that last い to くて,",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "          ずうずうしい -> ずうずうし ->  ずうずうしくて",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "And for な adjectives, we use で instead of な",
    japanesesection_id: 2
})

Japanesecopyparagraph.create({
    text: "          のうてんき -> のうてんきで",
    japanesesection_id: 2
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





=begin

Vocabword.create({
    kanji: "",
    nokanji: "",
    english: "",
    japanesesection_id: 2
})

=end