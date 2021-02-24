import React from 'react';
import { Link } from 'react-router-dom'
import ReviewNavBarContainer from '../nav_bar/review_nav_bar_container'
import reviewRating from './review_rating'

class ReviewForm extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            message: '',
            rating: '',
            user_id: this.props.user_id,
            business_id: this.props.match.params.businessId
        }
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
        this.props.createReview(this.state).then(()=> this.props.history.push(`/businesses/${this.state.business_id}`))
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
                        <Link to="/"><img className="review-logo" src={window.mainLogo} alt=""/></Link>
                        
                        <div className="review-nav-spacefill"></div>
                        <ReviewNavBarContainer/>
                    </div>
                    <div className="review-form-main">
                        <form onSubmit={this.handleSubmit}>
                            <div className="review-form-box">
                                <div className="review-form-texts">
                                    <span className="review-form-business-name">{this.props.business.name}</span>
                                    <span className="review-form-guide">Review our review guidelines</span>
                                </div>
                                <div className="review-content-box">
                                    <p className="select-rating-text">Select your rating</p>
                                    <reviewRating />
                                    {/* <input type="number" min="1" max="5" className="rating-number"value={this.state.rating} onChange={this.handleChange("rating")}/> */}
                                    <textarea className="text-area-text"value={this.state.message} onChange={this.handleChange("message")} 
                                    placeholder="It's amazing that they've added delivery due to COVID. The delivery wasn't perfert--they forgot one of my side dishes--but I understand this is a new operation for them at this time. Even so, the burrito was delicious and more than made up for it!"></textarea>
                                </div>
                                <div>
                                    <h1 className="review-form-attach-photos">Attach Photos</h1>
                                    <div className="just-box">
                                        <div className="attach-picture">
                                            <img className="add-photo-icon" src={window.addPhoto} alt=""/>
                                        </div>
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