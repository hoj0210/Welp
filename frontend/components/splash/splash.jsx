import React from 'react';
import { Link } from 'react-router-dom';
import NavBar from '../nav_bar/nav_bar'
// import SplashSearchBoxContainer from '../search_box/splash_search_box_container'
import PopularSearchesContainer from '../popular_searches/popular_searches_container'
import Categories from '../categories/categories'
import About from '../about/about'
import NewBusinessesContainer from '../new_businesses/new_businesses_container'
import SearchBox from '../search_box/search_box';

class Splash extends React.Component {
    constructor(props){
        super(props)
    }

    render(){
        return(
            <>
                <div className="splash-top-container">
                    {/* <img className="background-pic" src={window.backgroundPic}/> */}
                    <div className="splash-main-top">
                        <div className="nav-bar-container">
                            <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout} />
                            <SearchBox formType={this.props.formType} />
                        </div>
                        <div className="splash-logo-container">
                            <Link to="/"><img className="splash-logo"src="https://vivalajaiba.com/wp-content/uploads/2018/07/yelp-logo.png" /></Link>
                        </div>
                        {/* <div className="search-box-container-splash">
                            <SplashSearchBoxContainer />
                        </div> */}
                    </div>
                </div>
                <div className="popular-searches">
                    <PopularSearchesContainer/>
                </div>
                {/* <div className="new-businesses">
                    <NewBusinessesContainer/>
                </div>
                <div className="splash-browse-category">
                    <Categories/>
                </div> */}
                <div className="splash-about">
                    <About/>
                </div>
            </>
            
        )
    }
}

export default Splash