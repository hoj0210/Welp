import React from 'react';
import {Link} from 'react-router-dom';

const About = props => (
    <div className="footer-container">
        <div className="footer-stuff">
            <div className="footer-about">
                <p className="footer-title">About</p>
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
                </div>  
            </div>
            <div className="footer-about">
                <p className="footer-title">Projects</p>
                <div className="about-links">
                    <div className="about-link">
                        <p>AA-Welp</p>
                    </div>
                    <div className="about-link">
                        <p>Widgets</p>
                    </div>
                    <div className="about-link">
                        <p>Knights Travail</p>
                    </div>
                    <div className="about-link">
                        <p>Tic Tac Toe</p>
                    </div>
                </div>
            </div>
            <div className="footer-about">
                <p className="footer-title">Relax</p>
                <div className="about-links">
                    <div className="about-link">
                        <p>Friends</p>
                    </div>
                    <div className="about-link">
                        <p>Harry Potter</p>
                    </div>
                    <div className="about-link">
                        <p>Cello</p>
                    </div>
                    <div className="about-link">
                        <p>IMDB</p>
                    </div>
                </div>
            </div>
        </div>
        <img className="bottom-image" src={window.bottomImg} alt=""/>
        {/* <div className="bottom-image">
            <img src={window.bottomImg} alt=""/>
        </div> */}
    </div>
)

export default About