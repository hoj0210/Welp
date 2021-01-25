import React from 'react';
import { Link } from 'react-router-dom'

const PopularSearches = props => (
    <div>
        <h1 className="splash-box-title">Find the Best Businesses in Town</h1>
        <div className="popular-search-container">
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.tacos} alt=""/>
                </div>
                <p className="popular-search-text">Tacos</p>
            </div>
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.loungeBar}/>
                </div>
                <p className="popular-search-text">Lounge Bar</p>  
            </div>
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.auto}/>
                </div>
                <p className="popular-search-text">Auto-Repair</p>
            </div>
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.shopping}/>
                </div>
                <p className="popular-search-text">Malls</p>
            </div>
        </div>
    </div>
)

export default PopularSearches