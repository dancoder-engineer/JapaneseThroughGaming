import './App.css';
import React, {useState, useEffect} from "react"
import { Route, Switch, useHistory } from "react-router-dom"
//import { lessons } from "./data/lessons.js"
import MainMenu from "./components/MainMenu.js"
import LessonHub from "./components/LessonHub.js"
import Quiz from "./components/Quiz.js"
import Login from "./components/Login.js"
import Register from "./components/Register.js"
import StudentInfo from "./components/StudentInfo.js"
import PeerGrading from "./components/PeerGrading.js"

function App() {

  //json calls
  //app, login, register

  const url="http://localhost:2500/users/"
  const lessonsurl = "http://127.0.0.1:3000/lessons"

  let history = useHistory();
  let [loggedIn, setLoggedIn] = useState(false)
  let [user, setUser] = useState({quizzes: []})
  let [lessons, setLessons] = useState([])
  let [titles, setTitles] = useState([])

  if (!loggedIn) { history.push("/login")}
  

  function getUserInfo(getUser) {
    setLoggedIn(true)
    setUser({...getUser})
    history.push("/")
    console.log(getUser)
  }




function updateUserInfo(updatedUser) {
  setUser({...updatedUser})
}



function massacre() {
 // console.log(user)
 //fetch("http://localhost:2500/users/4", {method: 'DELETE'})
 history.push('/peer')
}


useEffect(() => {
  fetch(lessonsurl)
  .then(res => res.json())
  .then(data => {
    setLessons(data)
    makeLessons(data)
})
}, [])


function makeLessons(lessons) {
  setLessons(lessons)
//  console.log(lessons)

 
  setTitles( 
        lessons.map(i => { 
          

          return {
          id: i.id,
          title: i.title,
          isGame: i.isgame,
          cover: i.cover.front,
          shortDescription: i.japanesesection.shortdescription
      }

   }))


}


  

  return (
    <div className="top">
      <p className="centeredText">Dan's Japanese Page</p>
    <Switch>
      <Route exact path="/">
          <MainMenu titles = {titles} paidHowFar={user.paidHowFar*5} user={user} />
      </Route>
      <Route path="/lesson/:id">
          <LessonHub lessons = {lessons} />
      </Route>
      <Route path="/quiz/:id">
          <Quiz lessons={lessons} userName={user.userName} url={url} userId={user.id} user={user} updateUserInfo={updateUserInfo} />
      </Route>
      <Route path="/login">
          <Login url ={url} getUserInfo={getUserInfo} />
      </Route>
      <Route path="/register">
        <Register url={url} />
      </Route>

      <Route path="/peer">
        <PeerGrading url={url} currentUser={user}/>
      </Route>
    </Switch>
    
    <Switch>
    <Route exact path="/">
      <StudentInfo loggedIn={loggedIn} user={user}/>
    </Route>
    </Switch>


    </div>
  );
}

export default App;
