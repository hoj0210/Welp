import React from 'react';
import { Link } from 'react-router-dom';
import SplashNavBarContainer from '../nav_bar/splash_nav_bar_container'
import SplashSearchBoxContainer from '../search_box/splash_search_box_container'
import PopularSearchContainer from '../popular_searches/popular_searches_container'
import Categories from '../categories/categories'
import About from '../about/about'

class Splash extends React.Component {
    constructor(props){
        super(props)
    }

    render(){
        return(
            <div id="wrapper">
                <div className="background-pic-container">
                    <img className="background-pic" src={window.backgroundPic}/>
                    <div className="splash-main-top">
                        <div className="nav-bar-container">
                            <SplashNavBarContainer />
                        </div>
                        <div className="splash-logo-container">
                            <Link to="/"><img className="splash-logo"src="https://vivalajaiba.com/wp-content/uploads/2018/07/yelp-logo.png" /></Link>
                        </div>
                        <div className="search-box-container">
                            <SplashSearchBoxContainer />
                        </div>
                    </div>
                </div>
                <div className="popular-searches">
                    <PopularSearchContainer/>
                </div>
                <div className="splash-browse-category">
                    <Categories/>
                </div>
                <div className="splash-about">
                    <About/>
                </div>
            </div>
            
        )
    }
}

export default Splash