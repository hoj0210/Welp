import React, { useEffect } from 'react';
import {Link} from 'react-router-dom';
import SearchBox from '../search_box/search_box';
import NavBar from '../nav_bar/nav_bar';
import About from '../about/about';
import ReviewIndexContainer from '../reviews/review_index_container'

// import ReviewsContainer from '../reviews/reviews_container'
// import OperationHoursContainer from '../operation_hours/operation_hours_container'

class Business extends React.Component {
    constructor(props) {
        super(props)
        this.todayDate = new Date
        this.avgStar = ''
        this.oneStar = (<div >
                        <i id="inv-star"className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        </div>)
        this.oneHalfStar = (<div >
                        <i id="inv-star"className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star-half-alt str fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        </div>)
        this.twoStar = (<div>
                        <i id="inv-star" className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="far fa-star str-g fa-xs" ></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                    </div>);
        this.twoHalfStar = (<div>
                        <i id="inv-star" className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star-half-alt str fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                    </div>);
        this.threeStar = (<div>
                        <i id="inv-star"className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                    </div>);
        this.threeHalfStar = (<div>
                        <i id="inv-star"className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star-half-alt str fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                    </div>);        
        this.fourStar = (<div>
                        <i id="inv-star" className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="far fa-star str-g fa-xs"></i>
                    </div>);
        this.fourHalfStar = (<div>
                        <i id="inv-star" className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i id="half-star"className="fas fa-star-half-alt str fa-xs"></i>
                    </div>);
        this.fiveStar = (<div>
                        <i id="inv-star"className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                        <i className="fas fa-star str fa-xs"></i>
                    </div>);
    }
    componentDidMount(){
        //debugger
        this.props.fetchBusiness(this.props.match.params.businessId)
    }

    componentDidUpdate(prevProps){
        //debugger
        if (prevProps.match.params.businessId !== this.props.match.params.businessId) {
            this.props.fetchBusiness(this.props.match.params.businessId)
        }
        window.scrollTo(0, 0)
    }
    // formSubmissionHandler(){
    //     const { name, photos } = this.state;
    //     const formData = new FormData();
    //     formData.append("business[name]", name);
    //     for (let i = 0; i < business.length; i++ ) {
    //         formData.append("business[photos][]", photos[i])
    //     }
    //     this.props.myThunkActionCreator(formData);
    // }
    
    open(){
        const todayDate = new Date().toDateString().split(" ")[0];
        for (let i = 0; i < this.props.business.schedules.length; i++) {
            if (this.props.business.schedules[i].day === todayDate) {
                return `${this.props.business.schedules[i].day}: ${this.props.business.schedules[i].open} - ${this.props.business.schedules[i].close}`
            }
        }
    }
    render(){
        if (!this.props.business) {
            //debugger
            return (
                <div>Loading..</div>
            )
        } else {
            debugger
            let finalRating = 0;
            if (this.props.business.reviews.length === 0) {
                finalRating = 5.00.toFixed(2);
            } else {
                let sumRating = 0;
                let avgRating = 0;
                for (let i = 0; i < this.props.business.reviews.length; i++) {
                    
                    sumRating += this.props.business.reviews[i].rating;
                    
                }      
                avgRating = sumRating / this.props.business.reviews.length;
                finalRating = avgRating.toFixed(2);  
            }
            if (finalRating > 4.9) {
                this.avgStar = this.fiveStar    
            } else if (finalRating > 4.40 && finalRating <= 4.9) {
                this.avgStar = this.fourHalfStar
            } else if (finalRating >= 4.0 && finalRating <= 4.4) {
                this.avgStar = this.fourStar
            } else if (finalRating > 3.5 && finalRating < 4) {
                this.avgStar = this.threeHalfStar
            } else if (finalRating >= 3 && finalRating <= 3.5 ) {
                this.avgStar = this.threeStar
            } else if (finalRating > 2.5 && finalRating < 3) {
                this.avgStar = this.twoHalfStar
            } else if (finalRating >= 2 && finalRating <= 2.5 ) {
                this.avgStar = this.twoStar
            } else if (finalRating > 1.5 && finalRating < 2) {
                this.avgStar = this.oneHalfStar
            } else {
                this.avgStar = this.oneStar
            }
            return (
                <div>
                    <div className="business-page-top">
                        <div className="top-header-container">
                            <Link to="/"><img className="top-logo-sign" src={window.mainLogo} /></Link>
                            <SearchBox formType={this.props.formType}/>
                            <Link to=""className="top-header-review-link">Write a Review</Link>
                            <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout}/>
                        </div>    
                    </div>
                    <div className="business-intro-container">
                        {/* <div className="business-img-container">
                            <input type="file" onChange={e => this.setState({photos: e.target.files})} multiple/>
                        </div> */}
                        <div className="business-pictures-container">
                            {this.props.business.photoUrls.map((photoUrl, i) => (
                                // <img className="business-pictures" key={i} src={photoUrl} alt=""/>
                                <img className="business-pictures" key={i} src={window.stockPhoto} alt=""/>
                            ))}
                        </div>
                             
                        <div className="business-intro">
                            <div className="business-intro-text">
                                <p>{this.props.business.name}</p>
                                <div className="rating-star-box">
                                    {this.avgStar}
                                    <span className="num-reviews">{this.props.business.reviews.length} reviews</span>
                                </div>
                                <div className="business-categories">
                                    <span className="claimed"><img className="claimed-icon"src={window.verified} alt=""/>Claimed</span>
                                    <span>&#8226;</span>
                                    <span className="dollar-sign">{this.props.business.price_range}</span>
                                    <span className="bullet-2">&#8226;</span>
                                    {this.props.business.categories.map((category, i) => {
                                        if(i === this.props.business.categories.length - 1) {
                                            return <span className="category-name" key={i}>{category.category} </span>
                                        } else {
                                            return <span className="category-name" key={i}>{category.category}, </span>
                                        }
                                    }
                                    )}
                                </div>
                                <p className="today-hours">{this.open()}</p>
                            </div>
                        </div>
                    </div>
                    <div className="business-page-link-container">
                        <div className="business-user-upload-links">
                            <button className="business-review-button" onClick={() => this.props.history.push(`/businesses/${this.props.business.id}/reviews/create`)}><img className="star-icon"src={window.star} alt=""/>Write a Review</button>
                        </div>
                    </div>
                    <div className="business-location-hour-container">
                        <div>
                            <p className="location-hours-text">Location and Hours </p>
                            <div className="business-location-hour-box">
                                <div className="business-location">
                                    <img className="sample-map"src={window.sampleMap} alt=""/>

                                    <ul className="business-street">{this.props.business.address}</ul>
                                    <ul className="business-addy">
                                        {this.props.business.city},
                                        {this.props.business.state}. 
                                        <br/>
                                        {this.props.business.b_zip_code}
                                    </ul>
                                </div>
                                <div className="business-schedule">
                                    <div className="schedule-day">
                                        {this.props.business.schedules.map((schedule, i) => (
                                            <div className="each-schedule-day" key={i}>{schedule.day}</div>     
                                        ))}
                                    </div>
                                    <div className="schedule-hours">
                                        {this.props.business.schedules.map((schedule, i) => (
                                                <div className="each-schedule-hours" key={i}>{schedule.open} - {schedule.close}</div>
                                        ))}
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="business-reviews-container">
                        <div>
                            <h4 className="recommend-reviews">Recommended Reviews</h4>
                            <ReviewIndexContainer business={this.props.business} />
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

export default Business