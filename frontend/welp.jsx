import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store'

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById('root');
    //testing
    window.getState = store.getState;
    window.dispatch = store.dispatch;
    const store = configureStore();
    ReactDOM.render(<h1>hello</h1>, root)

})