import React from 'react';
import { Link, withRouter } from 'react-router-dom'
import {connect } from 'react-redux'

class PopularSearches extends React.Component {
    constructor(props) {
        super(props)
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(type) {
        debugger
        this.props.searchBusinesses(type).then(() => this.props.history.push(`/businesses?query=${type}`))
    }

    render(){
        return(
            <div>
                <h1 className="splash-box-title">Find the Best Restaurants by Cuisine</h1>
                <div className="popular-search-container">
                    <div className="popular-search-item" onClick={() => this.handleClick("mexican")}>
                        <div className="popular-search-pic-c">
                            <img className="popular-search-pic" src={window.tacos} alt=""/>
                        </div>
                        <p className="popular-search-text">Mexican</p>
                    </div>
                    <div className="popular-search-item" onClick={() => this.handleClick("korean")}>
                        <div className="popular-search-pic-c">
                            <img className="popular-search-pic" src={window.koreanCuisine}/>
                        </div>
                        <p className="popular-search-text">Korean</p>  
                    </div>
                    <div className="popular-search-item" onClick={() => this.handleClick("american")}>
                        <div className="popular-search-pic-c">
                            <img className="popular-search-pic" src={window.americanCuisine}/>
                        </div>
                        <p className="popular-search-text">American</p>
                    </div>
                    <div className="popular-search-item" onClick={() => this.handleClick("japanese")}>
                        <div className="popular-search-pic-c">
                            <img className="popular-search-pic" src={window.japaneseCuisine}/>
                        </div>
                        <p className="popular-search-text">Japanese</p>
                    </div>
                </div>
            </div>
        )
    }
}

const msp = (state, ownProps) => (
    {

    }
)

const mdp = dispatch => (
    {

    }
)

export default withRouter(connect(msp, mdp)(PopularSearches))