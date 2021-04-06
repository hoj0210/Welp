import React from 'react';
import { Link } from 'react-router-dom';
import NavBar from '../nav_bar/nav_bar'
// import SplashSearchBoxContainer from '../search_box/splash_search_box_container'
import PopularSearches from '../popular_searches/popular_searches'
// import Categories from '../categories/categories'
import About from '../about/about'
// import NewBusinessesContainer from '../new_businesses/new_businesses_container'
import SearchBox from '../search_box/search_box';

class Splash extends React.Component {
    constructor(props){
        super(props)
    }

    // componentDidMount(){
    //     this.props.receiveCurrentUser(this.props.currentUser)
    // }

    render(){
        return(
            <>
                <div className="splash-top-container">
                    {/* <img className="background-pic" src={window.backgroundPic}/> */}
                    <div className="splash-main-top">
                        <div className="nav-bar-container">
                            <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout} />
                            <SearchBox formType={this.props.formType} searchBusinesses={this.props.searchBusinesses} />
                        </div>
                        <div className="splash-logo-container">
                            <Link to="/"><img className="splash-logo"src="http://d5yem10y0aabn.cloudfront.net/welp_logo.png" /></Link>
                        </div>
                        {/* <div className="search-box-container-splash">
                            <SplashSearchBoxContainer />
                        </div> */}
                    </div>
                </div>
                <div className="popular-searches">
                    <PopularSearches searchBusinesses={this.props.searchBusinesses}/>
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