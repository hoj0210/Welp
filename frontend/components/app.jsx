import React from 'react';
import LoginFormContainer from './login_form/login_form_container';
import SignupFormContainer from './signup_form/signup_form_container';

const App = () => (
    <div>
        <h1>Welp!</h1>
        <Route path="/login" component={LoginFormContainer} />
        <Route pate="/signup" component={SignupFormContainer} />
    </div>
)

export default App