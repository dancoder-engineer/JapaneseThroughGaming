import React, {useState, useEffect} from "react";
import GameData from "./GameData.js"
import GameCommentary from "./GameCommentary.js"
import JapaneseLesson from "./JapaneseLesson.js"
import './styles/Lesson.css';
import { useParams, NavLink, Switch, Route } from "react-router-dom"

function LessonHub({lessons}) {

    const [lesson, setLesson] = useState({})
    const [sendToGameData, setSendToGameData] = useState(null)
    const [sendToCommentary, setSendToCommentary] = useState(null)
    const [sendToJapaneseLesson, setSendToJapaneseLesson] = useState(null)

    const params=useParams()
    const lessonsurl = "http://127.0.0.1:5000/lessons/" + params.id

    useEffect(() => {
        fetch(lessonsurl)
        .then(res => res.json())
        .then(data => {
       //     console.log(data)
            formatSendToGameData(data)
            formatSendToCommentary(data)
            formatSendToJapaneseLesson(data)
        })
      }, [])


      function formatSendToGameData(data) {
        let pics = ({ 
            front: data.cover.front,
            back: data.cover.back,
            titlescreen: data.cover.titlescreen,
            otherPics: data.otherpics
        })
      setLesson(data)

      let info = ({
        title: data.title,
        releases: data.releases
      })

      setSendToGameData({
        pics: pics,
        info: info
      })
      }

      function formatSendToCommentary(data) { console.log(data)
     //   console.log(data)
        let gameCopy = data.gamesection.reviewtext.split("||")
        setSendToCommentary({
            gameCopy: gameCopy,
            screenshoturls: data.gamesection.screenshoturls.split("||"),
            screenshottext: data.gamesection.screenshottext.split("||")
        })
        
      }

      function formatSendToJapaneseLesson(data) {

        console.log(data)
        setSendToJapaneseLesson({
            lessonTitle: data.japanesesection.lessontitle,
            shortDescription: data.japanesesection.shortdescription,
            howtoMake: data.japanesesection.howtomake,
            screenshot: data.japanesesection.screenshot,
            maincopy: data.japanesesection.japanesecopy,
            mainExample: data.examples[0],
            extraExamples: data.examples.slice(1,),
            vocabulary: data.vocabwords.map(i => [i.kanji, i.nokanji, i.english])
        })

      }
      
    

    //let lesson = lessons.find(i => { return i.id === parseInt(params.id) })
    let mainLink=`/lesson/${params.id}/main`
    let gameLink=`/lesson/${params.id}/game`
    let japaneseLink=`/lesson/${params.id}/japanese`

    // <GameData pics={pics} info={info}/>

    return(
        <div className="hub">
            <div className="mainInfo">
            <p className="centeredText">
                  <NavLink to={mainLink}>Front Page</NavLink>
                </p>
            </div>
            <div className="linkToGame">
            <p className="centeredText">
                  <NavLink to={gameLink}>Game Commentary</NavLink>
                </p>
            </div>
            <div className="linktoJapanese">
            <p className="centeredText">
            <NavLink to={japaneseLink}>Japanese Lesson</NavLink>
                </p>
            </div>
            <div className="linkBack">
            <p className="centeredText">
                <NavLink to="../../">Back</NavLink>
                </p>
            </div>

           
            <div className="theLesson">
                
                <Switch>
                    <Route path={mainLink}>
                      {sendToGameData &&  <GameData sentData={sendToGameData}/> }
                    </Route>
                    <Route path={gameLink}>
                      {sendToCommentary && <GameCommentary sentData={sendToCommentary}/> }
                    </Route>
                    <Route path={japaneseLink}>
                      {sendToJapaneseLesson && <JapaneseLesson japaneseCopy={sendToJapaneseLesson}/> }
                    </Route>

                </Switch>
            </div> 
        </div> 
    )
}

export default LessonHub