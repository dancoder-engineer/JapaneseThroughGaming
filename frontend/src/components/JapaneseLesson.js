import React from "react"
import ExtraExample from "./ExtraExample.js"
import VocabularyTable from "./VocabularyTable.js"

function JapaneseLesson({japaneseCopy}) {

    console.log(japaneseCopy)


    let howToMake = japaneseCopy.howtoMake.includes("||") ? japaneseCopy.howtoMake.split("||").map(i => <h3 className="centeredText" key={i}>{i}</h3>) : <h3 className="centeredText" key="lhj">{japaneseCopy.howToMake}</h3>
    let lessonCopy= japaneseCopy.maincopy.includes("||") ? japaneseCopy.maincopy.split("||").map((i, index) => <p key="kj">{i}</p>) : <p>{japaneseCopy.maincopy}</p>
    let truth = japaneseCopy.mainExample.kanji === ""
    let kanjiLine = japaneseCopy.mainExample.kanji !== "" ? "W/ Kanji: " + japaneseCopy.mainExample.kanji : null
    let nokanjiLine = japaneseCopy.mainExample.nokanji !== "" ? "No Kanji: " + japaneseCopy.mainExample.nokanji : null
    let br = <br />

    let extraExamples = japaneseCopy.extraExamples.map(i => <ExtraExample extraExample={i} key={i.title} />)

    return(
        <div>
            <h1 className="centeredText">{japaneseCopy.lessonTitle}</h1>
            {howToMake}
            <img src={japaneseCopy.screenshot} className="lessonScreenshot" alt="screenshot" />
            <p className="smallCenteredText">
                {kanjiLine && kanjiLine}
                {truth ? "" : br}
                {nokanjiLine && nokanjiLine} <br />
                English: {japaneseCopy.mainExample.english}
            </p>
            {lessonCopy}
            <br />
            <h2 className="centeredText">Extra Examples</h2>
            {extraExamples} <br />

            <VocabularyTable vocabulary={japaneseCopy.vocabulary} />
            <br />
        </div>
    )
}

export default JapaneseLesson