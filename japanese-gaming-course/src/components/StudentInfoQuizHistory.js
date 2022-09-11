import React, {useState} from "react";
import '../App.css';

function StudentInfoQuizHistory({quiz}) {

    let [open, setOpen] = useState(false)



        function openClose() {
            setOpen(!open)
        }


        if (!open) {
            return(
                <div>
                    Quiz {quiz.id} Info <button onClick={openClose}>Open</button>
                </div>
            )
        }

        if (open) {
        return(
            <div>
                Quiz {quiz.id} Info <button onClick={openClose}>Close</button><br /><br />
                     Score: {quiz.mcScore}%
                    
            </div>
        )
        }
    }



export default StudentInfoQuizHistory