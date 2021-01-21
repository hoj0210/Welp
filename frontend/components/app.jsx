import React from 'react';
import { Route, Switch, Link } from 'react-router-dom'
import LoginFormContainer from './login_form/login_form_container';
import SignupFormContainer from './signup_form/signup_form_container';
import Splash from './splash/splash';
import NavBarContainer from './nav_bar/nav_bar_container'
import {AuthRoute} from '../util/route_util'

const App = () => (
    <div>
        <header>
            <Link to="/"><h1>Welp!</h1></Link> 
            <NavBarContainer />
        </header>
        <Switch>
            <AuthRoute exact path="/login" component={LoginFormContainer} />
            <AuthRoute exact path="/signup" component={SignupFormContainer} />
            <Route exact path="/" component={Splash}/>
        </Switch>
    </div>
)

export default App