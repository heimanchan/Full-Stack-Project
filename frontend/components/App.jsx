import React from 'react';
import { AuthRoute } from '../util/route_util'
import NavBarContainer from './nav_bar/nav_bar_container'
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/sign_up_form_container';
import Splash from './splash';

const App = () => (
  <header>
    <h1>Take me down to the Paradise City</h1>
    <NavBarContainer />
    <Splash />
    <AuthRoute path="/login" component={LoginFormContainer} />
    <AuthRoute path="/signup" component={SignupFormContainer} />
  </header>
)

export default App;