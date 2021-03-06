import React from 'react';
import {Link} from 'react-router-dom';
import SearchBox from '../search_box/search_box';
import NavBar from '../nav_bar/nav_bar';
import About from '../about/about';
import BusinessMap from './business_map';

class BusinessIndex extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            search: this.props.location.search.split("=")[1]
        }
        this.mount = false;
    }

    componentDidMount(){
        
        this.mount = true;
        // this.setState({search: this.props.location.search.split("=")[1]})
        if (Object.keys(this.props.businesses).length === 0 || !Array.isArray(this.props.businesses)) {
            
            this.props.searchBusinesses(this.state.search)
        }
        // const search = this.props.location.search.split("=")[1];
    }

    componentDidUpdate(prevProps){
        
        if (!this.mount) this.mount = true;
        if (prevProps.location.search.split("=")[1] !== this.props.location.search.split("=")[1]) {
            
            this.setState({search: this.props.location.search.split("=")[1]})
        }
        window.scrollTo(0, 0)
    }

    render(){
        
        if (this.mount === true && (Object.keys(this.props.businesses).length === 0 || !Array.isArray(this.props.businesses))) {
            this.mount = false;
            return (
                <div>
                    <div className="business-page-top-index">
                        <div className="top-header-container">
                            <Link to="/"><img className="top-logo-sign" src="http://d5yem10y0aabn.cloudfront.net/welp_logo.png"/></Link>
                            <SearchBox formType={this.props.formType} searchBusinesses={this.props.searchBusinesses}/>
                            <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout}/>
                        </div>    
                    </div>
                    <div className="business-index-main">
                        <p className="best-in">Search not found. Try a different search.</p>
                    </div>
                    <div className="splash-about">
                        <About />
                    </div>
                </div>
            )
        } else if ( this.mount === false && (Object.keys(this.props.businesses).length === 0 || !Array.isArray(this.props.businesses))) {
            
            return (
                <div>Loading..</div>
            )
        } else {
            
            return(
                <div>
                    <div className="business-page-top-index">
                        <div className="top-header-container">
                            <Link to="/"><img className="top-logo-sign" src="http://d5yem10y0aabn.cloudfront.net/welp_logo.png" /></Link>
                            <SearchBox formType={this.props.formType} searchBusinesses={this.props.searchBusinesses}/>
                            <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout}/>
                        </div>    
                    </div>
                    <div className="business-index-main">
                        <div>
                            <p className="best-in">Best {this.state.search} in Los Angeles, CA.</p>
                            <p className="all-results">All Results</p>
                            <div className="results">
                                {this.props.businesses.map((business, i) => {
                                    
                                    let finalRating = 0;
                                    let avgStar = "";
                                    let numReviews = ""
                                    if (business.reviews !== undefined) {
                                        numReviews = business.reviews.length
                                    }
                                    if (numReviews === 0 || numReviews === "") {
                                        finalRating = 5.00.toFixed(2);
                                    } else {
                                        let sumRating = 0;
                                        let avgRating = 0;
                                        for (let i = 0; i < numReviews; i++) {
                                            sumRating += business.reviews[i].rating;              
                                        }      
                                        avgRating = sumRating / numReviews;
                                        finalRating = avgRating.toFixed(2);  
                                    }
                                    if (finalRating > 4.9) {
                                        avgStar = window.fiveStar   
                                    } else if (finalRating > 4.40 && finalRating <= 4.9) {
                                        avgStar = window.fourHalfStar
                                    } else if (finalRating >= 4.0 && finalRating <= 4.4) {
                                        avgStar = window.fourStar
                                    } else if (finalRating > 3.5 && finalRating < 4) {
                                        avgStar = window.threeHalfStar
                                    } else if (finalRating >= 3 && finalRating <= 3.5 ) {
                                        avgStar = window.threeStar
                                    } else if (finalRating > 2.5 && finalRating < 3) {
                                        avgStar = window.twoHalfStar
                                    } else if (finalRating >= 2 && finalRating <= 2.5 ) {
                                        avgStar = window.twoStar
                                    } else if (finalRating > 1.5 && finalRating < 2) {
                                        avgStar = window.oneHalfStar
                                    } else {
                                        avgStar = window.oneStar
                                    }
        
                                    return(
                                        <div className="each-result-container" key={i}>
                                            <Link className="result-link" to={`/businesses/${business.id}`}>
                                                <div className="each-result">
                                                    {/* <img className="b_index_pic"src={window.stockPhoto} alt=""/> */}
                                                    <img className="b_index_pic"src={business.photoUrls[0]} alt=""/>
                                                    <div className="result-info">
                                                        <div className="result-name">
                                                            <p>{i + 1}. </p>
                                                            <p className="result-name-name">{business.name}</p>
                                                        </div>
                                                        <div className="result-location">
                                                            <p className="result-num">{business.phone_num}</p>
                                                            <p>{business.address}</p>
                                                        </div>
                                                        <div className="result-rating">
                                                        <p> <img src={avgStar} alt=""/></p> 
                                                        <p className="result-num-reviews">{numReviews}</p>
                                                        </div>
                                                        <div className="result-categories">
                                                            <span className="result-dollar-sign">{business.price_range}</span>
                                                            <span className="result-bullet">&#8226;</span>
                                                            {business.categories.map((category, i) => {
                                                                if(i === business.categories.length - 1) {
                                                                    return <span className="result-category-name" key={i}>{category.category} </span>
                                                                } else {
                                                                    return <span className="result-category-name" key={i}>{category.category}, </span>
                                                                }
                                                            }
                                                            )}
                                                        </div>
                                                        <div className="result-booleans">
                                                            <p className="result-boolean">{business.delivery ? <img className="result-bool" src="http://d5yem10y0aabn.cloudfront.net/business_boolean/yes.png"/> : <img className="result-bool"src="http://d5yem10y0aabn.cloudfront.net/business_boolean/no.png"/>} Delivery</p>
                                                            <p className="result-boolean">{business.takeout ? <img className="result-bool"src="http://d5yem10y0aabn.cloudfront.net/business_boolean/yes.png"/> : <img className="result-bool"src="http://d5yem10y0aabn.cloudfront.net/business_boolean/no.png"/>} Takeout</p>
                                                            <p className="result-boolean">{business.outdoor ? <img className="result-bool"src="http://d5yem10y0aabn.cloudfront.net/business_boolean/yes.png"/> : <img className="result-bool"src="http://d5yem10y0aabn.cloudfront.net/business_boolean/no.png"/>} Outdoor seating</p>
                                                        </div>
                                                        <div className="result-review">
                                                            <p className="result-review-text">"{business.reviews.length !== 0 ? `${business.reviews[0].message.split(" ").filter((w, i) => i < 30).join(" ")}...` : "Write the first review!"}"<span className="result-review-more">more</span></p>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </Link>
                                            
                                        </div>
                                    )
                                })}
                            </div>
                            
                        </div>
                        <div className="index-map-box">
                            <BusinessMap businesses={this.props.businesses}/>
                        </div>
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