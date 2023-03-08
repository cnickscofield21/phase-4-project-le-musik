import { useState } from 'react'
import './App.css'
import NavBar from './Components/Navbar'
import Home from './Components/Home'
import AlbumCard from './Components/AlbumCard'
import SongCard from './Components/SongCard'
import ArtistCard from './Components/ArtistCard'
import Login from './Components/Login'
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function App() {
  const [user, setUser] = useState()

  return (
    <div className="App">
      <Router>
        <NavBar />

        <Routes>
          <Route exact path="/" element={<Home />} />
          <Route exact path="/albums/:id" element={<AlbumCard />} />
          <Route exact path="/songs/:id" element={<SongCard />} />
          <Route exact path="/artists/:id" element={<ArtistCard />} />
          <Route exact path="/userlogin" element={<Login />} />
          {/* <Route exact path="/forums/new" element={<Newforumpage />} />
          <Route exact path="/game/new" element={<Newgameform />} /> */}
        </Routes>
      </Router>
    </div>
  )
}

export default App
