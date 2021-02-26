import React from 'react';
import { Link } from 'react-router-dom'
import NavBar from '../nav_bar/nav_bar'
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
        // debugger
        if (this.state.rating === '') {
            const ratingText = document.getElementById("rating-text");
            if (n === 1) {
                // debugger
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
            
        } else {
            const ratingText = document.getElementById("rating-text");
            if (n === 1) {
                // debugger
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
                if (this.state.rating === 1) {
                    // debugger
                    ratingText.innerText = "Not good"
                } else if (this.state.rating === 2) {
                    ratingText.innerText = "Could've been better"
                } else if (this.state.rating === 3) {
                    ratingText.innerText = "OK"
                } else if (this.state.rating === 4) {
                    ratingText.innerText = "Good"
                } else if (this.state.rating === 5) {
                    ratingText.innerText = "Great"
                }
            }
        }
        
    }
    handleRatingChange(n){
        debugger
        this.setState({rating: n})
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
            debugger
            ratingText.innerText = "Great"
        } else {
            debugger
            ratingText.innerText = "Select your rating"
        }
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

    removeModal(){
        const regulation = document.getElementById("regulation");
        return(
            regulation.style.display = "none"
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
                        <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout}/>
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
                                                <div className="content-guidelines">
                                                    <p>Content Guidelines</p>
                                                    <p className="x" onClick={this.removeModal}>
                                                        <i class="fas fa-times"></i>
                                                    </p>
                                                </div>
                                                <div className="regulation-scrollable">
                                                    <p className="gen-guide">General Guidelines</p>
                                                    <br/>
                                                    <p>
                                                        People come to Yelp to connect with great local businesses. We know that people won’t always agree, but we expect everyone on the site to treat one another and the platform with honesty and respect. We’ve put together these general guidelines to help set the tone for discourse on the site—just in case. Please also read the additional guidelines below for specific types of content that you might contribute to the site.
                                                    </p>
                                                    <br/>
                                                    <ul>
                                                        <li><span>Relevance:</span> Please make sure your contributions are appropriate to the forum. For example, reviews aren’t the place for rants about political ideologies, a business’s employment practices, extraordinary circumstances, or other matters that don’t address the core of the consumer experience.</li>
                                                        <br/>
                                                        <li><span>Inappropriate content:</span> Colorful language and imagery are fine, but there's no place for threats, harassment, lewdness, hate speech, or other display sof bigotry.</li>
                                                        <br/>
                                                        <li><span>Conflicts of interest:</span> Your contributions to Yelp should be unbiased and objective. For example, you shouldn’t write reviews of your own business or employer, your friends’ or relatives’ business, your peers or competitors in your industry, or businesses in your networking group. Businesses should never ask customers to write reviews.</li>
                                                        <br/>
                                                        <li><span>Privacy:</span> Don’t publicize people’s private information. For instance, please don’t post close-up photos or videos of other patrons without their permission, and don’t post other people’s full names unless you’re referring to someone who is commonly referred to by their full name.</li> 
                                                        <br/>
                                                        <li><span>Promotional content:</span> Don’t post promotional material unless it’s in connection with a Yelp advertising product and through a Business Account. Let’s keep the site useful for consumers and not overrun with commercial noise from every user.</li>
                                                        <br/>
                                                        <li><span>Intellectual property:</span> Don’t swipe content from other sites, users, or businesses. You’re a smart cookie, so write your own copy and share your own photos and videos.</li>                                                   
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