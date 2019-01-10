import React, { Component } from 'react';
import { BrowserRouter, Route } from 'react-router-dom';

// import components
import HeaderNavigation from './components/HeaderNavigation';
import AboutPage from './components/AboutPage';
import ContentPage from './components/ContentPage';

class App extends Component {
  render() {
    console.log("Public URL");
    console.log(`${process.env.PUBLIC_URL}`);
    return (
      <BrowserRouter basename={`${process.env.PUBLIC_URL}`}>
        <div className="App">
          <div className="topContent">
            <HeaderNavigation />
            <div className="main-content">
              <Route path="/about" component={AboutPage} />
              <Route exact path="/" component={ContentPage} />
            </div>
          </div>
          <footer className="text-muted"><small> © 2019 Brown Center for Biomedical Informatics, Brown University </small></footer>
        </div>
      </BrowserRouter>
    );
  }
}

export default App;
