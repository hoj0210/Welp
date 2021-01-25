import React from 'react';
import {Link} from 'react-router-dom';

class SearchBox extends React.Component {
    constructor(props){
        super(props)
        this.type = (this.props.formType === "splash") ? "splash" : "other"
        this.find = (this.props.formType === "splash") ? "Find" : ""
        this.near = (this.props.formType === "splash") ? "Near" : ""
    }

    handleSubmit(e){
        e.preventDefault()
    }

    render(){
        return(
            <div className="search-box-container">
                <div className={`search-box${this.type}`}>
                    <form>
                        <div className={`search-texts${this.type}`}>
                            <label className={`search-word1${this.type}`}>
                                {this.find}
                                <input className={`search-text${this.type}`}type="text" placeholder="tacos, pizza, burger..." />
                            </label>
                            <label className={`search-word2${this.type}`}>{this.near}
                                <input className={`search-text${this.type}`}type="text" placeholder="New York, NY" />
                            </label>
                            <button className={`search-icon-button${this.type}`}>
                                <img src={window.searchIcon}/>
                            </button>
                        </div>
                        
                    </form>
                </div> 
            </div>
        )
    }
}

export default SearchBox