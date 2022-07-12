import './App.css';
import ListEventComponent from './components/ListEventComponent';
import React from 'react';
import {BrowserRouter as Router, Route, Link, Routes} from 'react-router-dom'
function App() {
  return (
    <Router>
      <Link to="/first">page1</Link>
      <div className="container">
      <ListEventComponent />
    </div>
    <Routes>
      <Route path="/first" component={App}></Route>
    </Routes>
    
    </Router>
  );
}

export default App;