const lessons = [
    



















    {
        id: 5,
        title: "Quiz #1",
        isGame: false,

        covers: {
            front: "https://i.imgur.com/gg15Wzi.jpg"
        },

        japaneseCopy: {
            shortDescription: "",
          },

        quizData: {

            quizNo: 1,

            multipleChoiceQuestions: [
                {
                    Question: "Don't eat the rotten sushi!",
                    choices: [ 
                    ["腐った寿司を食べて死ね！","くさった　すしを　たべて　しね！"],
                    ["腐った寿司を食べるな","くさった　すしを　たべるな！"],
                    ["おいしい寿司を食べるな！","おいしい　すしを　たべるな！"],
                    ["へたくそで作った寿司をどうぞ。","へたくそで　つくった　すしを　どうぞ。"]
                    ],
                    correctChoice: "B"
                },

                {
                    Question: "Don't choose Charmander (hitokage,) because Brock (Takeshi) will be too difficult.",
                    choices: [ 
                    ["優しいゲームが好きじゃないから、ヒトカゲを選ぶよ！","やさしい　ゲームが　すきじゃない　から、ヒトカゲを　えらぶよ！"],
                    ["ジュンサーさん、タケシはいくら面倒くさくても、逮捕するな！","ジュンサーさん、タケシは　いくら　めんどうくさくても、たいほするな！"],
                    ["タケシは難しいから　ヒトカゲを選ぶなよ！","タケシは　むずかしい　から　ヒトカゲを　えらぶなよ！"],
                    ["タケシ、急いでいるからナンパをするなよ！","タケシ、いそいでいる　から　ナンパを　するなよ！"]
                    ],
                    correctChoice: "C"
                },


                {
                    Question: "My wife is a beautiful and kind person.",
                    choices: [ 
                    ["女房はきれいで優しい人です。","にょうぼうは　きれいで　やさしい　ひとです。"],
                    ["女房はきらいで優しくない人です。","にょうぼうは　きらいで　やさしくない　ひとです。"],
                    ["女房の友達の方がきれいで優しい人です。","にょうぼうの　ともだちの　ほうが　きらいで　やさしい　ひとです。"],
                    ["今の女房が一番醜いぜ！","いまの　にょうぼうが　いちばん　みにくいぜ！"]
                    ],
                    correctChoice: "A"
                },


                {
                    Question: "These shorts are cute and cheap!",
                    choices: [ 
                    ["このたんパンはダサいから安いです。","この　たんパンは　ダサい　から　やすいです。"],
                    ["あなたが履いているたんパンはかわいい！買っていい？","あなたが　はいている　たんパンは　かわいい！かっていい？"],
                    ["この私はどのたんパンを履いてもかわいい！","この　わたしは　どの　たんパンを　はいても　かわいい！"],
                    ["このたんパンはかわいくて安いですね！","この　たんパンは　かわいくて　やすいですね！"]
                    ],
                    correctChoice: "D"
                },


                {
                    Question: "The alcohol I drank last night was delicious.",
                    choices: [ 
                    ["千九百九十八年飲んだお酒はおいしかったです。","せんきゅうひゃくきゅうじゅうはちねん　のんだ　おさけは　おいしかったです。"],
                    ["昨日飲まなかったお酒はおいしかったです。","きのう　のまなかった　おさけは　おいしかったです。"],
                    ["昨日飲んだお酒はおいしかったです。","きのう　のんだ　おさけは　おいしかったです。"],
                    ["昨日飲んだお酒は毒でした。","きのう　のんだ　おさけは　どくでした。"]
                    ],
                    correctChoice: "C"
                },


                {
                    Question: "The movie I saw last week was good!",
                    choices: [ 
                    ["先週見た映画は楽しかったです！","せんしゅう　みた　えいがは　たのしかったです！"],
                    ["先週見た映画の女優はべっぴんです！","せんしゅう　みた　えいがの　じょゆうは　べっぴんです！"],
                    ["先週見た映画は変でした！","せんしゅう　みた　えいがは　へんでした！"],
                    ["先週見たアニメは楽しかったです！","せんしゅう　みた　アニメは　たのしかったです！"]
                    ],
                    correctChoice: "A"
                },


                {
                    Question: "This question is easy to understand.",
                    choices: [ 
                    ["この質問の答えはＣです。","この　しつもんの　こたえは　Ｃです。"],
                    ["この試験の答えは変ですね。","この　しけんの　こたえは　へんですね。"],
                    ["この質問はわかりやすいです。","この　しつもんは　わかりやすいです。"],
                    ["この質問はダメですから諦めるしかない。","この　しつもんは　ダメです　から　あきらめるしかない。"]
                    ],
                    correctChoice: "C"
                },


                {
                    Question: "That computer is easy to use.",
                    choices: [ 
                    ["あのパソコンは使いやすいです。","あの　パソコンは　つかいやすいです。"],
                    ["あのパソコンは壊れやすいです。","あの　パソコンは　こわれやすいです。"],
                    ["あのパソコンはアップルだから買うなよ！","あの　パソコンは　アップルだから　かうなよ！"],
                    ["私のパソコンは高かったから、スイッチを買ったらよかった！","わたしの　パソコンは　たかかったから、スイッチを　かったらよかった！"]
                    ],
                    correctChoice: "A"
                },


            ],


            openEndedQuestions: [
                "Translate to Japanese: That dress is ugly and expensive, so don't buy it!",
                "Translate to Japanese: The phone I'm buying tomorrow is easy to use."
            ]

        }
    }



    
]

export { lessons }