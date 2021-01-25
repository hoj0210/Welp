import React from 'react';
import { Route, Switch, Link } from 'react-router-dom'
import LoginFormContainer from './login_form/login_form_container';
import SignupFormContainer from './signup_form/signup_form_container';
import Splash from './splash/splash';
import NavBarContainer from './nav_bar/splash_nav_bar_container'
import {AuthRoute} from '../util/route_util'
import BusinessContainer from './business_page/business_container'

const App = () => (
    <div>
        {/* <header>
            <NavBarContainer />
        </header> */}
        <Switch>
            <AuthRoute exact path="/login" component={LoginFormContainer} />
            <AuthRoute exact path="/signup" component={SignupFormContainer} />
            <Route exact path="/" component={Splash}/>
            <Route exact path="/businesses/:businessId" component={BusinessContainer} />
        </Switch>
    </div>
)

export default App