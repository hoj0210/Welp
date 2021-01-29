import React from 'react';
import { Link } from 'react-router-dom'
import ReviewNavBarContainer from '../nav_bar/review_nav_bar_container'

class ReviewForm extends React.Component {
    constructor(props){
        super(props)
        this.state = this.props.review;
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    handleChange(type){
        return(e) => (
            this.setState({[type]: e.currentTarget.value})
        )
    }

    componentDidMount(){
        //debugger
        this.props.fetchBusiness(this.props.match.params.businessId)
    }

    handleSubmit(e){
        e.preventDefault(); 
        this.props.createReview(this.state);
    }

    render(){
        if (!this.props.business) {
            return (
                <div>Loading..</div>
            )
        } else {
            return(
                <div>
                    <div className="review-form-navbar">
                        <img className="review-logo" src={window.mainLogo} alt=""/>
                        <div className="review-nav-spacefill"></div>
                        <ReviewNavBarContainer/>
                    </div>
                    <div className="review-form-main">
                        <form onSubmit={this.handleSubmit}>
                            <div className="review-form-box">
                                <div>
                                    <span className="review-form-business-name">{this.props.business.name}</span>
                                    <span className="review-form-guide">Review our review guidelines</span>
                                </div>
                                <div>
                                    <input type="number" min="1" max="5" className="rating-number"value={this.state.rating} onChange={this.handleChange("rating")}/>
                                    <textarea value={this.state.message} onChange={this.handleChange("message")}></textarea>
                                </div>
                                <div>
                                    <h1 className="review-form-attach-photos">Attach Photos</h1>
                                    <div className="attach-picture">
                                    </div>
                                </div>
                            </div>
                            <button className="review-post-button">Post Review</button>
                        </form>
                    </div>
                </div>
        )
        }
        
    }
}

export default ReviewForm