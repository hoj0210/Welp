import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../nav_bar/nav_bar_container'
import SearchBoxContainer from '../search_box/search_box_container'
import PopularSearchContainer from '../popular_searches/popular_searches_container'
import Categories from '../categories/categories'


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
                            <NavBarContainer />
                        </div>
                        <div className="splash-logo-container">
                            <Link to="/"><img className="splash-logo"src="https://vivalajaiba.com/wp-content/uploads/2018/07/yelp-logo.png" /></Link>
                        </div>
                        <div className="search-box-container">
                            <SearchBoxContainer />
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

                </div>
            </div>
            
        )
    }
}

export default Splash