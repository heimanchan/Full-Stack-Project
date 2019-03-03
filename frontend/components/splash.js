import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../components/nav_bar/nav_bar_container';
import SearchBar from '../components/search_bar';

export default () => {
  return (
    <div className="splash">
      <NavBarContainer />
      <div className="splash-box">
        <div className="fo">
          <div className="next-trip">
            <div className="trip-title">
              <h1>Plan your next trip</h1>
            </div>
            <SearchBar />
          </div>
        </div>
      </div>
    </div>
  )
}

