import React from 'react';
import { Link } from 'react-router-dom'

const PopularSearches = props => (
    <div>
        <h1 className="splash-box-title">Popular Searches</h1>
        <div className="popular-search-container">
            <div className="search-landing">
                <div className="search-landing-pic">
                    <img src={window.tacos} alt=""/>
                </div>
                <div className="search-landing-text">
                    <p>Tacos</p>
                </div>
            </div>
            <div className="search-landing">
                <div className="search-landing-pic">
                    <img src={window.loungeBar}/>
                </div>
                <div className="search-landing-text">
                    <p>Lounge Bar</p>
                </div>
            </div>
            <div className="search-landing">
                <div className="search-landing-pic">
                    <img src={window.auto}/>
                </div>
                <div className="search-landing-text">
                    <p>Auto-Repair</p>
                </div>
            </div>
            <div className="search-landing">
                <div className="search-landing-pic">

                </div>
                <div className="search-landing-text">

                </div>
            </div>
        </div>
    </div>
)

export default PopularSearches