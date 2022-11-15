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

function App() {

  //json calls
  //app, login, register

  const url="http://localhost:2500/users/"
  const lessonsurl = "http://127.0.0.1:5000/lessons"

  let history = useHistory();
  let [loggedIn, setLoggedIn] = useState(true)
  let [user, setUser] = useState({quizzes: []})
  let [lessons, setLessons] = useState([])
  let [titles, setTitles] = useState([])

  if (!loggedIn) { history.push("/login")}
  

  function getUserInfo(getUser) {
    setLoggedIn(true)
    setUser({...getUser})
    history.push("/")
  //  console.log(getUser)
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
      <p className="centeredText">Japanese through Retro Gaming </p>
    <Switch>
      <Route exact path="/">
          <MainMenu />
      </Route>
      <Route path="/lesson/:id">
          <LessonHub />
      </Route>
      <Route path="/quiz/:id">
          <Quiz userId={user.id} user={user} />
      </Route>
      <Route path="/login">
          <Login getUserInfo={getUserInfo} />
      </Route>
      <Route path="/register">
        <Register />
      </Route>

      <Route path="/peer">
        
      </Route>
    </Switch>
    



    </div>
  );
}

export default App;


{/* <Switch>
<Route exact path="/">
  <StudentInfo loggedIn={loggedIn} user={user}/>
</Route>
</Switch> */}