import  React, {useState, useEffect} from "react"
import { NavLink } from "react-router-dom";
import './styles/MainMenu.css';

function MainMenuCard({titles, user}) {
    const [usr, setUsr] = useState(null)

    let quizId = "quiz" + titles.id / 5
    
    let link

    useEffect(() => { 
        youGetMe()
    }, [])

    function youGetMe() {
        fetch("/users/4")
        .then(res => res.json())
        .then(data => {//console.log(data)
            setUsr(data)
        })
    }



    if(titles.isGame) { link = (
        <div>
        <div className="picDiv">
        <NavLink to={`/lesson/${titles.id}/main`}>
             <img src={titles.cover} className="coverPic" alt="pic" />
        </NavLink>
        </div>
        <p className="centeredText">
        <NavLink to={`/lesson/${titles.id}/main`}>Game: {titles.title}<br />
        Japanese: {titles.shortDescription}</NavLink>
        </p>
        </div>
    )}

    else {
        if (usr) {
     if (Object.keys(usr.userquizzes).length < (titles.id / 5)) { 
    //    if (3 > 1) { console.log(quizId.split("z")[1])
            link = (
            <div className="quizData">
                <br /><br /><br /><br /><br />
                <p>Quiz not yet taken. Give it a shot!</p>
                <NavLink to={`/quiz/${titles.id / 5}/`}>Quiz No. {titles.id / 5}</NavLink>
            </div>
            )
        }

    else { 

            let qId = quizId.split("z")[1]
            qId -= 1

            link = (
            <div className="quizData">
                <br /><br />
                {usr && (<p>Quiz taken.<br />
                Grade: {usr["userquizzes"][qId]["mcScore"]}%<br />
                </p>) }
                <NavLink to={`/quiz/${titles.id / 5}/`}>Retake Quiz</NavLink>
                <p>Warning: Retaking the quiz will erase all current records upon grading.</p>
            </div>
            )
        }

    }
       
        
}
    

        // <div><ruby>腐<rt>くさ</rt></ruby>った<ruby>寿司<rt>すし</rt></ruby>を<ruby>食<rt>た</rt></ruby>べるな</div>

    return (
    <div className="card">
        {link}

    </div>
    )
}

export default MainMenuCard