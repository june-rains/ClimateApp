import React from 'react';
import { Route, Routes, BrowserRouter } from 'react-router-dom'
import Page1 from './components/Page1'
import Home from './components/Home'
import 'bootstrap/dist/css/bootstrap.min.css';


function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/page1' element={<Page1 />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;