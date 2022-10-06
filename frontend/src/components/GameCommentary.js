import React from "react";
import Screenshot from "./Screenshot.js"
import './styles/Lesson.css';


function GameCommentary({sentData}){
    console.log(sentData)
    const gameCopy = sentData.gameCopy
    const screenshots = sentData.screenshots

   // console.log(gameCopy)
    let paragraphs = gameCopy.map((i, index) => <p key={index}>{i}</p>)
    let screens = screenshots.map(i => <Screenshot screenshot={i} />)
// 
// 

    return (
        <div className="gameCommentary">
            <div className="gameReview">
                {paragraphs}
            </div>
        <div className="gameScreenshots">
           {screens}
        </div>
        </div>
    )
}

export default GameCommentary