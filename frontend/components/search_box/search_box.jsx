import React from 'react';
import {Link, withRouter} from 'react-router-dom';
import {connect} from 'react-redux'

class SearchBox extends React.Component {
    constructor(props){
        super(props)
        this.type = (this.props.formType === "splash") ? "splash" : "other"
        this.find = (this.props.formType === "splash") ? "Find" : ""
        this.near = (this.props.formType === "splash") ? "Near" : ""
        this.state = {
                query: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this)
    }
    
    handleChange(type){
        return(e) => (
            this.setState({[type]: e.currentTarget.value})
        )
    }

    handleSubmit(e){
        debugger
        e.preventDefault()
        this.props.searchBusinesses(this.state.query).then(() => this.props.history.push(`/businesses?query=${this.state.query}`))
    }

    render(){
        return(
            <div className={`search-box-container-${this.type}`}>
                <div className={`search-box${this.type}`}>
                    <form onSubmit={this.handleSubmit}>
                        <div className={`search-texts${this.type}`}>
                            <label className={`search-word1${this.type}`}>
                                {this.find}
                                <input className={`search-text${this.type}`}type="text" placeholder="tacos, Japanese, Phil's BBQ..." onChange={this.handleChange('query')}/>
                            </label>
                            <label className={`search-word2${this.type}`}>{this.near}
                                <input className={`search-text${this.type}`}type="text" placeholder="New York and Los Angeles ONLY FOR NOW" />
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

const msp = (state, ownProps) => (
    {

    }
)


const mdp = dispatch => (
    {

    }
)
export default withRouter(connect(msp, mdp)(SearchBox))