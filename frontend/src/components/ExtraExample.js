import React from "react"

function ExtraExample({extraExample}){
console.log(extraExample)

    let kanjiLine = extraExample.kanji !== "" ? "W/ Kanji:" + extraExample.kanji : null
    let nokanjiLine = extraExample.nokanji !== "" ? "No Kanji:" + extraExample.nokanji : null
    let br = <br />

    return (
        <div className="extraExample">
            <div className="extraTitle">
                {extraExample.title}
            </div>
            <div className="extraBox">
                <img className="extraImage" src={extraExample.box} alt={extraExample.title} />
            </div>
            <div className="extraText">
            <p className="smallLeftText">
                {kanjiLine && kanjiLine}
                {kanjiLine && <br />}
                {nokanjiLine && nokanjiLine} <br />
                English: {extraExample.english}
            </p>
            </div>
        </div>
    )
}

export default ExtraExample