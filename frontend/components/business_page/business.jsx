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
        //debugger
        this.props.fetchBusiness(this.props.match.params.businessId)
    }

    componentDidUpdate(prevProps){
        if (prevProps.match.params.businessId !== this.props.match.params.businessId) {
            this.props.fetchBusiness(this.props.match.params.businessId)
        }
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
                            <OtherNavBarContainer/>
                        </div>    
                    </div>
                    <div className="business-intro-container">
                        {/* <div className="business-img-container">
                            <input type="file" onChange={e => this.setState({photos: e.target.files})} multiple/>
                        </div> */}
                        <img className="business-pictures"src={this.props.business.photoUrls} alt=""/>
                        
                        <div className="business-intro">
                            <div className="business-intro-text">
                                <p>{this.props.business.name}</p>
                                <p>this is where the avg rating goes</p>
                                <p>{this.props.business.price_range}</p>
                                <p>{this.props.business.categories}</p>
                                <p>this is where TODAY's schedule goes in</p>
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