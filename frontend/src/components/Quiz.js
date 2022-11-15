import React, { useEffect, useState } from "react"
import './styles/Quiz.css'
import { useParams, useHistory, NavLink } from "react-router-dom"
import QuizQuestion from "./QuizQuestion.js"
import QuizAnswers from "./QuizAnswers.js"

function Quiz() {

    const passingGrade = 65

   // let userId = null
    ////console.log(userUrl)
    const history = useHistory();
    const params = useParams()
    let user = null

    useEffect(() => {
        checkLoggedIn()
    })

    function checkLoggedIn() {
        fetch('/getme/')
        .then(res => res.json())
        .then(data => {
            if (data.error) { history.push("/") }
            else { user = data }
        })
    }
    


    //let quizData = lessons.find(i => { return i.id === parseInt(params.id) * 5 }).quizData
   // let noOfQuestions = 0
 //  let mcAnswers = 0
    let [questionData, setQuestionData] = useState(null)
   // let [oldGrade, setOldGrade] = useState(null)
    let [quizData, setQuizData] = useState(null)
    let [questionNumber, setQuestionNumber] = useState(1)
    let [useKanji, setUseKanji] = useState(true)
    let [questionType, setQuestionType] = useState("multipleChoiceQuestions")
    let [noOfQuestions, setNoOfQuestions] = useState(0)
    let [answers, setAnswers] = useState([])
    let [quizGoingOn, setQuizGoingOn] = useState(true)
    let [mcAnswers, setMcAnswers] = useState(null)
        



    useEffect( () => {
        
        let url="/quizzes/"+params.id
        fetch(url)
        .then(res => res.json())
        .then(data => { 
            createQuiz(data)
            let tempAns=[]
        for(let i=0; i < noOfQuestions; i++) { tempAns.push(null) }
        setAnswers([...tempAns])
        })

        
    }, [])

   
    function createQuiz(data){
        
        let mcq = []
        for (let i of data.questions) { 
            mcq.push({
                question: i.ques,
                choices: [
                    i.choice1.split("||"),
                    i.choice2.split("||"),
                    i.choice3.split("||"),
                    i.choice4.split("||")
                ],
                correctChoice: i.correctChoice

            }) }
        let qData = {
            quizNo: params.id,
            multipleChoiceQuestions: mcq
        }
        //console.log("qdata", qData)
        setNoOfQuestions(qData.multipleChoiceQuestions.length)
        setMcAnswers(qData.multipleChoiceQuestions.map(i => i.correctChoice))
        setQuestionData(qData.multipleChoiceQuestions[0])
    
        setQuizData(qData)

    }

    function handleChange(answer) {

        let tempAnswer=[...answers]
        

        if ( questionType === "multipleChoiceQuestions") {
            let oldChoice = document.querySelectorAll(".chosen")
            
            if (oldChoice.length !== 0) {
                for (let i of oldChoice) {
                    i.className = "unchosen"
                }
            }
            answer.target.className="chosen"
            tempAnswer[questionNumber-1] = answer.target.id
         }

        else { 
            tempAnswer[questionNumber-1] = answer
        }

        //console.log(tempAnswer)
        setAnswers([...tempAnswer])
    }

    function changeKanji(){
        setUseKanji(!useKanji)
    }

    function goBack(){
        if (questionNumber !== 1) { setQuestionNumber(questionNumber - 1) }
        clearAnswers()
    }

    function goForward(){
        if (questionNumber !== noOfQuestions) { setQuestionNumber(questionNumber + 1) }
        clearAnswers()
    }

    function clearAnswers() {
        //console.log(answers)

        if ( questionType === "multipleChoiceQuestions") {
            let oldChoice = document.querySelectorAll(".chosen")
            
            if (oldChoice.length !== 0) {
                for (let i of oldChoice) {
                    i.className = "unchosen"
                }
            }
        


         }

         else {
            let answerBox = document.querySelector("#box")
            answerBox.value=""
         }
    }

    useEffect(() => {
        

//        else { 
            setQuestionType("multipleChoiceQuestions")
            if (quizData) {
            setQuestionData(quizData.multipleChoiceQuestions[questionNumber-1])
         }
    }, [questionNumber])





    function getGrade() {
        let right=0
        let ques="question"
        for (let i=0; i < quizData.multipleChoiceQuestions.length; i++) {
            if (mcAnswers[i] === answers[i]) { right += 1 }
        }
        if (right > 1) { ques += "s" }
        if (right === 0) { ques += "s" }
        let gradeSpiel = `You got ${right} ${ques} right out of ${quizData.multipleChoiceQuestions.length}. That's ${right/quizData.multipleChoiceQuestions.length*100}%`
        document.querySelector("#grade").innerHTML=gradeSpiel





        let quizzes = {...user.quizzes}


        quizzes["quiz"+params.id] = {
            
                
                
                id: quizData.quizNo,
                mcScore: Math.floor(right/quizData.multipleChoiceQuestions.length*100),
           
                }
            
                return Math.floor(right/quizData.multipleChoiceQuestions.length*100)
          
        //  user.canBeGraded = false
       //   let fullquizzes = {...user, quizzes}
          
      // //console.log(user)
        


    }
    // <p className="centeredText">Question {questionNumber} of {noOfQuestions}</p>


    let backButton = <div><br /><button onClick={goBack}>Previous Question</button></div>
    let submitButton = <div><br /><button className="inputBox"  onClick={gradeQuiz}>Let's Get this Baby Graded!</button></div>
    let nextButton = <div><br /><button onClick={goForward}>Next Question</button></div>
    let kanjiButton = (
            <div>
                <br />
                {useKanji ? <button onClick={changeKanji}>Get rid of the Kanji</button> : <button onClick={changeKanji}>Show me the Kanji</button>}
            </div>
    )
    let backToMenuButton = (
        <div>
            <br />
                <NavLink to="../../">
                    <button>Return to Main Menu</button>
                </NavLink>
        </div>
    )

    let quizAnswers = (
        <div>
            <QuizAnswers answers={answers} quizData={quizData} useKanji={useKanji}/>
        </div>
    )

     let questionComponent = <QuizQuestion questionData={questionData} useKanji={useKanji} questionType={questionType} questionNumber={questionNumber} handleChange={handleChange} answers={answers} />




    function setgoingOn(){
        setQuizGoingOn(!quizGoingOn)
    }


    function openNextChapter(uid) { 
        let url = "/users/" + uid
//console.log("url", url)
        fetch(url, {
                
            method: 'PATCH',
            headers: { 
              'Content-Type': 'application/json',
              accept: 'application/json' 
            },
            body: JSON.stringify({gotHowFar: parseInt(params.id) + 1})
          })
          .then(res => res.json())
          .then(() => setgoingOn())
    

    }

    function processGrade(userQuizData) { 
             /*
   
        //console.log(passingGrade, userQuizData.mcScore, userQuizData.mcScore >= passingGrade)
        //console.log(userQuizData.user.gotHowFar, params.id, userQuizData.user.gotHowFar <= params.id)
        //console.log((userQuizData.mcScore >= passingGrade) && (userQuizData.user.gotHowFar <= params.id))
        //get 'userquiz/:userid/:quizid', to:'userquizzes#userandquiz'

                "id": 1,
                "quizNo": 1,
                "mcScore": 65,
                "user_id": 1
       
       //console.log("full data", userQuizData)
        //console.log("quiz id", params.id)
        //console.log("user id", userId)
        //console.log("old grade", userQuizData.mcScore)
        //console.log("grade", getGrade())

        */

          let url = "/userquizzes/" + userQuizData.id

        fetch(url, {
            method: 'PATCH',
            headers: { 
              'Content-Type': 'application/json',
              accept: 'application/json' 
            },
            body: JSON.stringify({mcScore: getGrade()})
          })
          .then(res => res.json())
          .then(data => { 
            if ((userQuizData.mcScore >= passingGrade) && (userQuizData.user.gotHowFar <= params.id)) {
                openNextChapter(data.user.id)
            }
            else { setgoingOn() }
          }
            )
      
        //if grade > 65, gotthrough == quizid + 1
      
    }

    function createNewQuiz() {
        let uq = {
            quizNo: params.id,
            mcScore: getGrade(),
            user_id: user.id
        }
        //console.log(uq)
        
        let url = "/userquizzes/"

        fetch(url, {
            method: 'POST',
            headers: { 
              'Content-Type': 'application/json',
              accept: 'application/json' 
            },
            body: JSON.stringify(uq)
          })
          .then(res => res.json())
          .then(data => { //console.log(data)
            if ((uq.mcScore >= passingGrade) && (data.user.gotHowFar <= params.id)) {
                openNextChapter(data.user.id)
            }
            else { setgoingOn() }
          }
            )

    }

    function gradeQuiz() {

        fetch("/userquiz/" + user.id + "/" + params.id)
        .then(res => res.json())
        .then(data => {
            if (!data) { createNewQuiz(data) }
            else { processGrade(data) }
        })
        
     
    }
//246:  {quizGoingOn ? questionComponent : null}
    return (
        <div className="quizPage">
            

            <div className="questionNumber">{quizGoingOn ? kanjiButton : quizAnswers}</div>

            

            <div className="kanjiKanaButton">{quizGoingOn ? backToMenuButton : null}</div>


            <div className="quizQuestion">
            {quizGoingOn ? questionComponent : null}
            </div>

            <div className="backButton">{quizGoingOn ? backButton : null}</div>
            <div className="submitButton">{quizGoingOn ? submitButton : null}</div>
            <div className="nextButton">{quizGoingOn ? nextButton : null}</div>



           

            <div className="middleForDev" onClick={setgoingOn}>
                <p className="centeredText" id="grade"></p>
            </div>

        </div>
    )
}

export default Quiz