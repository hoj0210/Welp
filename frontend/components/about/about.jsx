import React from 'react';
import {Link} from 'react-router-dom';

const About = props => (
    <div className="footer-container">
        <div className="footer-stuff">
            <div className="footer-about">
                <p className="footer-title">About</p>
                <div className="about-links">
                    <div className="about-link">
                        <a href="https://github.com/hoj0210" target="_blank">Github</a>
                    </div>
                    <div className="about-link">
                        <a href="https://angel.co/u/hojung-cha" target="_blank">AngelList</a>
                    </div>
                    <div className="about-link">
                        <a href="https://www.linkedin.com/in/hojung-cha-4b613b206/" target="_blank">LinkedIn</a>
                    </div>
                </div>  
            </div>
            <div className="footer-about">
                <p className="footer-title">Projects</p>
                <div className="about-links">
                    <div className="about-link">
                        <a href="https://hoj0210.github.io/space_escape/" target="_blank">Space Escape</a>
                    </div>
                    <div className="about-link">
                        <a href="https://fit2me.herokuapp.com/#/" target="_blank">Fit2Me</a>
                    </div>
                    <div className="about-link">
                        <a href="https://welp-aa.herokuapp.com/#/" target="_blank">Welp</a>
                    </div>
                </div>
            </div>
            <div className="footer-about">
                <p className="footer-title">Interests</p>
                <div className="about-links">
                    <div className="about-link">
                        <a href="https://www.imdb.com/" target="_blank">IMDB</a>
                    </div>
                    <div className="about-link">
                        <a href="https://www.facebook.com/hoj0210/" target="_blank">Facebook</a>
                    </div>
                    <div className="about-link">
                        <a href="https://www.appacademy.io/course/software-engineer-in-person?utm_campaign=9733787911&utm_adgroup=99332832893&utm_matchtype=e&utm_device=c&utm_gclid=Cj0KCQiAj9iBBhCJARIsAE9qRtAjEIXtG4MZmrTV7MDRko-6j5-uzsaQPZuD6vf4dkIEnTTtefxTZPQaAkelEALw_wcB&utm_creative=428112103662&utm_keyword=app%20academy&utm_source=google&utm_medium=ppc&utm_adposition=&utm_placement=&utm_location=9031067&utm_network=g&gclid=Cj0KCQiAj9iBBhCJARIsAE9qRtAjEIXtG4MZmrTV7MDRko-6j5-uzsaQPZuD6vf4dkIEnTTtefxTZPQaAkelEALw_wcB" target="_blank">App Academy</a>
                    </div>
                </div>
            </div>
        </div>
        <img className="bottom-image"src="http://d5yem10y0aabn.cloudfront.net/yelp_footer.png" alt=""/>
        {/* <img className="bottom-image" src={window.bottomImg} alt=""/> */}
        {/* <div className="bottom-image">
            <img src={window.bottomImg} alt=""/>
        </div> */}
    </div>
)

export default About