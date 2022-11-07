import React from "react";
import '../App.css';
import StudentInfoQuizHistory from "./StudentInfoQuizHistory.js"
import { useHistory } from "react-router-dom"

function StudentInfo({loggedIn, user}) {

    let quizList = []
    const history = useHistory()

  
    
        for (let quiz in user.quizzes){
            quizList.push(<StudentInfoQuizHistory quiz={user.quizzes[quiz]} />)
        }
    

    if(!loggedIn) {
        return(
            <div></div>
        )
    }


    if(loggedIn) {
        return(
            <div>
                <p className="centeredText">Grade information for {user.userName}</p>
                    {quizList}
                <br />
                <br />
                <br />
                {user.canBeGraded ? null : null}
            </div>
        )
    }

}

export default StudentInfo