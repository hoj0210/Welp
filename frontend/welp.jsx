import React from 'react';
import ReactDOM from 'react-dom';

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById('root');

    const store = configureStore();
    ReactDOM.render(<h1>hello</h1>, root)
})