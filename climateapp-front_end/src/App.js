import React from 'react';
import { Route, Routes, BrowserRouter } from 'react-router-dom'
import EventCatalog from './components/EventCatalog'
import Home from './components/Home'
import 'bootstrap/dist/css/bootstrap.min.css'
import EventDetail from './components/EventDetail'
import OverAllReport from './components/OverAllReport';
import OverAllVisualization from './components/OverAllVisualization';
import Continue from './components/Continue'


function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/eventsCatalog' element={<EventCatalog />} />
        <Route path='/eventsCatalog/:id' element={<EventDetail />} />
        <Route path='/overAllReport' element={<OverAllReport />} />
        <Route path='/dataVisualization' element={<OverAllVisualization />} />
        <Route path='/continue' element={<Continue/>}/>
      </Routes>
    </BrowserRouter>
  );
}

export default App;