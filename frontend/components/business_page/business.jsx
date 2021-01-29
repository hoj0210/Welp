import React, { useEffect } from 'react';
import {Link} from 'react-router-dom';
import OtherSearchBoxContainer from '../search_box/other_search_box_container';
import OtherNavBarContainer from '../nav_bar/other_nav_bar_container';
import About from '../about/about';
import ReviewIndexContainer from '../reviews/review_index_container'
// import ReviewsContainer from '../reviews/reviews_container'
// import OperationHoursContainer from '../operation_hours/operation_hours_container'

class Business extends React.Component {
    constructor(props) {
        super(props)
        this.todayDate = new Date
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
    formSubmissionHandler(){
        const { name, photos } = this.state;
        const formData = new FormData();
        formData.append("business[name]", name);
        for (let i = 0; i < business.length; i++ ) {
            formData.append("business[photos][]", photos[i])
        }
        this.props.myThunkActionCreator(formData);
    }
    
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
            //debugger
            return (
                <div>
                    <div className="business-page-top">
                        <div className="top-header-container">
                            <Link to="/"><img className="top-logo-sign" src={window.mainLogo} /></Link>
                            <OtherSearchBoxContainer/>
                            <Link to=""className="top-header-review-link">Write a Review</Link>
                            <OtherNavBarContainer/>
                        </div>    
                    </div>
                    <div className="business-intro-container">
                        {/* <div className="business-img-container">
                            <input type="file" onChange={e => this.setState({photos: e.target.files})} multiple/>
                        </div> */}
                        <div className="business-pictures-container">
                            {this.props.business.photoUrls.map((photoUrl, i) => (
                                <img className="business-pictures" key={i} src={photoUrl} alt=""/>
                            ))}
                        </div>
                             
                        <div className="business-intro">
                            <div className="business-intro-text">
                                <p>{this.props.business.name}</p>
                                <span>this is where the avg rating goes</span>
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
                        <p className="location-hours-text">Location and Hours </p>
                        <div className="business-location-hour-box">
                            <div className="business-location">
                                <img className="sample-map"src={window.sampleMap} alt=""/>

                                <ul className="business-street">{this.props.business.address}</ul>
                                <ul className="business-addy">
                                    {this.props.business.city}
                                    {this.props.business.state}
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
                    <div className="business-reviews-container">
                        <ReviewIndexContainer business={this.props.business} />
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