import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { login, receiveErrors } from '../../actions/session_actions';
import LoginForm from './login_form';

const msp = (state, ownProps) => (
    {
        errors: state.errors.session,
    }
)

const mdp = dispatch => (
    {
        processForm: (user) => dispatch(login(user)),
        receiveErrors: (errors) => dispatch(receiveErrors(errors))
    }
)

export default connect(msp, mdp)(LoginForm)