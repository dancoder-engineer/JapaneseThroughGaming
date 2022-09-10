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

