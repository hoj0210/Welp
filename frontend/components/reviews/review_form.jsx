import React from 'react';
import { Link } from 'react-router-dom'
import ReviewNavBarContainer from '../nav_bar/review_nav_bar_container'
import Rating from 'react-rating';

class ReviewForm extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            message: '',
            rating: '',
            user_id: this.props.user_id,
            business_id: this.props.match.params.businessId
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleRatingChange = this.handleRatingChange.bind(this);
        this.handleHover = this.handleHover.bind(this);
    }

    handleHover(n){
        debugger
        const ratingText = document.getElementById("rating-text");
        if (n === 1) {
            debugger
            ratingText.innerText = "Not good"
        } else if (n === 2) {
            ratingText.innerText = "Could've been better"
        } else if (n === 3) {
            ratingText.innerText = "OK"
        } else if (n === 4) {
            ratingText.innerText = "Good"
        } else if (n === 5) {
            ratingText.innerText = "Great"
        } else {
            ratingText.innerText = "Select your rating"
        }
    }
    handleRatingChange(n){
        debugger
        this.setState({rating: n})
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
        debugger
        e.preventDefault(); 
        this.props.createReview(this.state).then(()=> this.props.history.push(`/businesses/${this.state.business_id}`))
    }

    reviewModal(){
        debugger
        const regulation = document.getElementById("regulation");
        debugger
        return(
            regulation.style.display = "block"
        )
    }

    removeModal(e){
        return(
            e.currentTarget.style.display = "none"
        )
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
                                    <span className="review-form-guide" onClick={() => this.reviewModal()}>Review our review guidelines</span>
                                    <div id="regulation"className="regulation-background" onClick={this.removeModal}>
                                        <div className="regulation-container-top" onClick={e => e.stopPropagation()}>
                                            <div className="regulation-text">
                                                <h2>Content Guidelines</h2>
                                                <div className="regulation-scrollable">
                                                    <h3>General Guidelines</h3>
                                                    <p>
                                                        People come to Yelp to connect with great local businesses. We know that people won’t always agree, but we expect everyone on the site to treat one another and the platform with honesty and respect. We’ve put together these general guidelines to help set the tone for discourse on the site—just in case. Please also read the additional guidelines below for specific types of content that you might contribute to the site.
                                                    </p>
                                                    <ul>
                                                        <li>Relevance: Please make sure your contributions are appropriate to the forum. For example, reviews aren’t the place for rants about political ideologies, a business’s employment practices, extraordinary circumstances, or other matters that don’t address the core of the consumer experience.</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div className="review-content-box">
                                    <p id="rating-text"className="select-rating-text">Select your rating</p>
                                    <Rating
                                        emptySymbol="fa fa-star fa-2x un-filled"
                                        initialRating={this.state.rating}
                                        fullSymbol="fa fa-star fa-2x filled"
                                        onChange={this.handleRatingChange}
                                        className="rating"
                                        onHover={this.handleHover}
                                    />
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