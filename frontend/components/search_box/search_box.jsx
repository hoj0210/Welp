import React from 'react';
import {Link} from 'react-router-dom';

class SearchBox extends React.Component {
    // constructor(props){
    //     this.props(props)
    // }

    handleSubmit(e){
        e.preventDefault()
    }

    render(){
        return(
            <div className="search-box-container">
                <div className="search-box">
                    <form>
                        <div className="search-texts">
                            <label className="search-word1">Find
                                <input className="search-text"type="text" placeholder="tacos, pizza, burger..." />
                            </label>
                            <label className="search-word2">Near
                                <input className="search-text"type="text" placeholder="New York, NY" />
                            </label>
                            <button className="search-icon-button">
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