import React from 'react';
import { Link } from 'react-router-dom'

const PopularSearches = props => (
    <div>
        <h1 className="splash-box-title">Find the Best Restaurants by Cuisine</h1>
        <div className="popular-search-container">
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.tacos} alt=""/>
                </div>
                <p className="popular-search-text">Mexican</p>
            </div>
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.koreanCuisine}/>
                </div>
                <p className="popular-search-text">Korean</p>  
            </div>
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.italianCuisine}/>
                </div>
                <p className="popular-search-text">Italian</p>
            </div>
            <div className="popular-search-item">
                <div className="popular-search-pic-c">
                    <img className="popular-search-pic" src={window.americanCuisine}/>
                </div>
                <p className="popular-search-text">American</p>
            </div>
        </div>
    </div>
)

export default PopularSearches