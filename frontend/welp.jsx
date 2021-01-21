import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store'
import * as SessionApiUtil from './util/session_api_util'
import Root from './components/root';

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById('root');
    let store;
    if (window.currentUser) {
        const preloadedState = {
            session: { id: window.currentUser.id },
            entities: {
                users: { [window.currentUser.id]: window.currentUser }
            }
        };
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }
    //testing
    window.getState = store.getState;
    window.dispatch = store.dispatch;
    window.login = SessionApiUtil.login
    window.logout = SessionApiUtil.logout
    window.signup = SessionApiUtil.signup
    //end testing
    ReactDOM.render(<Root store={store} />, root)
})