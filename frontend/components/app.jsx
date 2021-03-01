import React from 'react';
import { Route, Switch, Link } from 'react-router-dom'
import LoginFormContainer from './login_form/login_form_container';
import SignupFormContainer from './signup_form/signup_form_container';
import SplashContainer from './splash/splash_container';
// import NavBarContainer from './nav_bar/splash_nav_bar_container'
import {AuthRoute, ProtectedRoute} from '../util/route_util'
import BusinessContainer from './business_page/business_container'
import ReviewFormContainer from './reviews/review_form_container'
import UpdateReviewFormContainer from './reviews/update_review_form_container'
const App = () => (
    <div>
        {/* <header>
            <NavBarContainer />
        </header> */}
            <Switch>
                <AuthRoute exact path="/signup" component={SignupFormContainer} />
                <AuthRoute exact path="/login" component={LoginFormContainer} />
                <Route exact path="/" component={SplashContainer}/>
                <Route exact path="/businesses/:businessId" component={BusinessContainer} />
                <ProtectedRoute exact path="/businesses/:businessId/reviews/create" component={ReviewFormContainer}/>
                <ProtectedRoute exact path="/businesses/:businessId/reviews/update/:reviewId" component={UpdateReviewFormContainer}/>
            </Switch>
    </div>
)

export default App