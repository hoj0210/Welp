import React from 'react';

class reviewRating extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            currentRating: this.props.currentRating
        }
        this.handleHover = this.handleHover.bind(this);
        this.ratingHandleClick = this.ratingHandleClick.bind(this);
    }

    componentDidMount(){
        this.setRating();
    }

    handleHover(e) {
        debugger
        const stars = e.target.parentElement.getElementsByClassName("star");
        const hoverValue = e.target.dataset.value;
        debugger
        Array.from(stars).forEach(star => {
            debugger
            star.style.color = hoverValue >= star.dataset.value ? "yellow" : "grey"
        })
    }
    
    setRating(e) {
        const stars = document.getElementsByClassName('star');
        Array.from(stars).forEach(star => {
            star.style.color = this.state.currentRating >= star.CDATA_SECTION_NODE.value ? "yellow" : "grey"
        })
    }

    ratingHandleClick(e) {
        let rating = e.target.dataset.value;
        this.setState({ currentRating: rating});
        if (this.props.onClick) {
            this.props.onClick(rating);
        }
    }

    render(){
        return(
            <div className="rating" data-rating={this.state.currentRating} onMouseOut={this.setRating}>
                {[...Array(+this.props.numberOfStars).keys()].map(n => {
                    return(
                        <span className="star" key={n+1} onMouseOver={this.handleHover} onClick={this.ratingHandleClick}>
                            &#9733;
                        </span>
                    )
                })}
            </div>
        )
    }
}

export default reviewRating;