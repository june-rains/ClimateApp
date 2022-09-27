import React from 'react';
import { Route, Routes, BrowserRouter } from 'react-router-dom'
import EventCatalog from './components/EventCatalog'
import Home from './components/Home'
import 'bootstrap/dist/css/bootstrap.min.css'
import EventDetail from './components/EventDetail'


function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/eventsCatalog' element={<EventCatalog />} />
        <Route path='/eventsCatalog/:id' element={<EventDetail />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;