import React, { useEffect, useState } from "react"
import { useHistory } from "react-router-dom";

import MainMenuCard from './MainMenuCard.js'
import './styles/MainMenu.css';


function MainMenu() { 
 //   const [user, setUser] = useState(null)
 //   const [titles, setTitles] = useState(null)
 const [cards, setCards] = useState(null)
 let user = null
 let titles = null

 const history = useHistory();

useEffect(() => {
    checkLoggedIn()
    grabLessons()
  
})

function checkLoggedIn() {
    fetch('/getme/')
    .then(res => res.json())
    .then(data => {
        if (data.error) { history.push("/") }
        else { user = data }
    })
}

function grabLessons() {
    fetch('/lessons/')
    .then(res => res.json())
    .then(data =>makeTitles(data) )
}

function makeTitles(lessons) {
   // setTitles( 
       titles = lessons.map(i => { 
          return {
          id: i.id,
          title: i.title,
          isGame: i.isgame,
          cover: i.cover.front,
          shortDescription: i.japanesesection.shortdescription
      }
   })
 //  console.log(user.paidHowFar)
   makeCards(titles)
   //)
}

function makeCards(titles) {
    let canSeeTitles = titles.filter( i => i.id <= user.paidHowFar)
    let tmpCards = canSeeTitles.map(i => <MainMenuCard key={i.id} titles={i} user={user} /> )
    setCards(tmpCards)
}

return (
   <div className="cards">
       {cards && cards}
   </div>
)

}

export default MainMenu