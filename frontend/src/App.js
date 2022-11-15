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
          <Quiz />
      </Route>
      <Route path="/login">
          <Login />
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