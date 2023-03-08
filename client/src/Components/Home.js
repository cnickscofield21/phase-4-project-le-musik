import {useEffect, useState} from "react"

function Home(){

    const [albums, setAlbums]=useState([])

    const user = {
        username: "nick",
        password: "password"
    }

    const loginObj = {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify(user)
    }



    useEffect(() =>{
        fetch("http://localhost:3000/albums")
        .then(r=>r.json())
        .then(data => console.log(data))

        fetch('http://localhost:3000/login', loginObj)
        .then(r => r.json())
        .then(data => console.log(data))
    },[])

    return (<>
    <h1>Homepage with albums</h1>
    </>)
}
export default Home