import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../nav_bar/nav_bar_container'

class Splash extends React.Component {
    constructor(props){
        super(props)
    }

    render(){
        return(
            <div id="wrapper">
                <div className="background-pic-container">
                    <img className="background-pic" src={window.backgroundPic}/>
                    <div className="block-1"></div>
                </div>
                <div className="splash-top">
                <header className="nav-bar-container">
                     <NavBarContainer />
                </header>
                    
                    <div className="splash-content">
                        <div className="splash-logo-container">
                            <Link to="/"><img className="splash-logo"src="https://vivalajaiba.com/wp-content/uploads/2018/07/yelp-logo.png" /></Link>
                        </div>

                    </div>
                </div>  
            </div>
            
        )
    }
}

export default Splash