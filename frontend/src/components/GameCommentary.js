import React from "react";
import Screenshot from "./Screenshot.js"
import './styles/Lesson.css';


function GameCommentary({sentData}){
    console.log(sentData)
    
    const captions = sentData.screenshottext

   // console.log(gameCopy)
    let paragraphs = sentData.gameCopy.map((i, index) => <p key={index}>{i}</p>)
    let screens = sentData.screenshoturls.map((i, index) => <Screenshot url={i} caption={captions[index]} key={index}/>)
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