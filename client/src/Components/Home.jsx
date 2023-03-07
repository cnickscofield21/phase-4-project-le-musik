function Home(){
    const user = {
        username: "nick",
        password: "password"
      }

    const loginObj = {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify(user)
    }

    fetch('http://localhost:3000/login', loginObj)
    .then(r => r.json())
    .then(console.log)

    return (<>
    <h1>Homepage with albums</h1>
    </>)
}
export default Home