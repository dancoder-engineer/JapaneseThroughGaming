import React from "react";
import './styles/Lesson.css';

function Screenshot({url, caption}) {

    return (
        <div className="screen">
            <img className="sideImg" src={url} alt="screen" />
            <p>{caption}</p>
        </div>
    )
}

export default Screenshot