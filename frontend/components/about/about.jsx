import React from 'react';
import {Link} from 'react-router-dom';

const About = props => (
    <div className="about-footer">
        <p className="about-title">About</p>
        <div className="about-links">
            <div className="about-link">
                <a href="https://github.com/hoj0210">Github</a>
            </div>
            <div className="about-link">
                <a href="https://www.facebook.com/hoj0210">Facebook</a>
            </div>
            <div className="about-link">
                <a href="">LinkedIn</a>
            </div>
            <div className="about-link">
                <a href="">Instagram</a>
            </div>
            <div className="bottom-image">
                <img src={window.bottomImg} alt=""/>
            </div>
        </div>
    </div>
)

export default About