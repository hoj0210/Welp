import React from 'react';
import {Link} from 'react-router-dom';
import SearchBox from '../search_box/search_box';
import NavBar from '../nav_bar/nav_bar';
import About from '../about/about';

class BusinessIndex extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            search: this.props.location.search.split("=")[1]
        }
    }

    componentDidMount(){
        debugger
        // this.setState({search: this.props.location.search.split("=")[1]})
        if (Object.keys(this.props.businesses).length === 0 || !Array.isArray(this.props.businesses)) {
            debugger
            this.props.searchBusinesses(this.state.search)
        }
        // const search = this.props.location.search.split("=")[1];
    }

    componentDidUpdate(prevProps){
        debugger
        if (prevProps.location.search.split("=")[1] !== this.props.location.search.split("=")[1]) {
            debugger
            this.setState({search: this.props.location.search.split("=")[1]})
        }
        window.scrollTo(0, 0)
    }

    render(){
        debugger
        if (Object.keys(this.props.businesses).length === 0 || !Array.isArray(this.props.businesses)) {
            debugger
            return (
                <div>Loading..</div>
            )
        } else {
            debugger
            return(
                <div>
                    <div className="business-page-top-index">
                        <div className="top-header-container">
                            <Link to="/"><img className="top-logo-sign" src={window.mainLogo} /></Link>
                            <SearchBox formType={this.props.formType} searchBusinesses={this.props.searchBusinesses}/>
                            <Link to=""className="top-header-review-link">Write a Review</Link>
                            <NavBar formType={this.props.formType} currentUser={this.props.currentUser} logout={this.props.logout}/>
                        </div>    
                    </div>
                    <div>
                        <p className="best-in">Best {this.state.search} in {}</p>
                        <p className="all-results">All Results</p>
                        <div className="results">
                            {this.props.businesses.map((business, i) => {
                                debugger
                                return(
                                    <div className="each-result-container" key={i}>
                                        <Link className="result-link" to={`/businesses/${business.id}`}>
                                            <div className="each-result">
                                                <img className="b_index_pic"src={window.stockPhoto} alt=""/>
                                                {/* <img className="b_index_pic"src={business.photoUrls[0]} alt=""/> */}
                                                <div className="result-info">
                                                    <div className="result-name">
                                                        <p>{i + 1}. </p>
                                                        <p className="result-name-name">{business.name}</p>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </Link>
                                        
                                    </div>
                                )
                            })}
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

export default BusinessIndex