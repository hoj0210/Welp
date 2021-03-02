import React from 'react';
import {Link} from 'react-router-dom';
import SearchBox from '../search_box/search_box';
import NavBar from '../nav_bar/nav_bar';
import About from '../about/about';

class BusinessIndex extends React.Component{
    constructor(props){
        super(props);
    }

    componentDidMount(){
        this.props.fetchBusinesses();
    }

    render(){
        if (Object.keys(this.props.businesses).length === 0) {
            debugger
            return (
                <div>Loading..</div>
            )
        } else {
            debugger
            return(
                <div>
                    <div className="business-page-top">
                        <div className="top-header-container">
                            <Link to="/"><img className="top-logo-sign" src={window.mainLogo} /></Link>
                            <SearchBox formType={this.props.formType}/>
                            <Link to=""className="top-header-review-link">Write a Review</Link>
                            <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout}/>
                        </div>    
                    </div>
                    <div>
                        {this.props.businesses.map(business => {
                            return(
                                <div>
                                    {business.name}
                                </div>
                            )
                        })}
                    </div>
                    <div className="splash-about">
                        <About />
                    </div>
                </div>
            )
        }
    }
}

export default BusinessIndex