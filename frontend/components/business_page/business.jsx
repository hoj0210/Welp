import React from 'react';
import {Link} from 'react-router-dom';
import OtherSearchBoxContainer from '../search_box/other_search_box_container';
import OtherNavBarContainer from '../nav_bar/other_nav_bar_container';
import About from '../about/about';
// import ReviewsContainer from '../reviews/reviews_container'
// import OperationHoursContainer from '../operation_hours/operation_hours_container'

class Business extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount(){
        debugger
        this.props.fetchBusiness(this.props.match.params.businessId)
    }

    componentDidUpdate(prevProps){
        if (prevProps.match.params.businessId !== this.props.match.params.businessId) {
            this.props.fetchBusiness(this.props.match.params.businessId)
        }
    }

    render(){
        if (!this.props.business) {
            debugger
            return (
                <div>Loading..</div>
            )
        } else {
            debugger
            return (
                <div>
                    <p>This is the business page</p>
                    <div className="business-page-top">
                        <img className="top-logo-sign" src={window.mainLogo} />
                        <div>
                            <OtherNavBarContainer />
                        </div>
                        <div className="search-box-container">
                            <OtherSearchBoxContainer />
                        </div>
                    </div>
                    <div className="business-intro-container">
                        <div className="business-img-container">
                            <p>images go here</p>
                        </div>
                        <div className="business-intro">
                            <p className="business-logo">image of the business logo</p>
                            <div className="business-intro-text">
                                <li>{this.props.business.name}</li>
                                <li>this is where the avg rating goes</li>
                                <li>{this.props.business.price_range}</li>
                                <li>{this.props.business.categories}</li>
                                <li>this is where TODAY's schedule goes in</li>
                            </div>
                        </div>
                    </div>
                    <div className="business-page-link-container">
                        <div className="business-user-upload-links">
                            <Link to="" className="business-review-button">Write a Review</Link>
                            <Link to="" className="business-add-photo">Add photo</Link>
                        </div>
                    </div>
                    <div className="business-location-hour-container">
                        <p>Location and Hours </p>
                        <div className="business-location-hour-box">
                            <div className="business-location">
                                <p>Map....=[</p>
                                <li>{this.props.business.address}</li>
                                <li>
                                    {this.props.business.city}
                                    {this.props.business.state}
                                    {this.props.business.b_zip_code}
                                </li>
                            </div>
                            <div className="business-operation-hr">
                                {/* <OperationHoursContainer /> */}
                            </div>
                        </div>
                    </div>
                    <div className="business-reviews-container">
                        {/* <ReviewsContainer /> */}
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