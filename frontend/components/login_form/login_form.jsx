import React from 'react';
import { Link } from 'react-router-dom';

class LoginForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: ""
        }
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    handleChange(type){
        return e => (
            this.setState({[type]: e.currentTarget.value})
        )
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.processForm(this.state).then(() => this.props.history.push(`/`))
    }

    componentWillUnmount(){
        this.props.receiveErrors([]);
    }

    renderErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={i}>{error}</li>
                ))}
            </ul>
        )
    }

    render(){
        return(
            <div id="wrapper">
                <div className="session-form">
                    <div className="session-form-inner">
                        <Link to="/"><img className="welplogo" src="https://vivalajaiba.com/wp-content/uploads/2018/07/yelp-logo.png"/></Link>
                    </div>
                    <div className="session-form-box">
                        <div className = "session-form-area">
                            <form onSubmit={this.handleSubmit}>
                                <p className="session-form-header">Log in to Welp</p>
                                {this.renderErrors()}
                                <p className="session-form-header-2">New to Welp? 
                                    <Link to='/signup'>Sign up</Link> 
                                </p>
                                <input 
                                    type="text" 
                                    value={this.state.email} 
                                    placeholder="Email" 
                                    onChange={this.handleChange("email")} 
                                    className="session-form-input"/>
                                <input 
                                    type="password" 
                                    value={this.state.password} 
                                    placeholder="Password" 
                                    onChange={this.handleChange("password")} 
                                    className="session-form-input"/>
                                <input type="submit" value="Log In" className="submit"/>
                                <p className="session-form-bottom">New to Welp? <Link to='/signup'>Sign up</Link></p>
                            </form>
                        </div>
                        <img className="graphics" src="https://s3-media0.fl.yelpcdn.com/assets/2/www/img/7922e77f338d/signup/signup_illustration.png" />
                    </div>
                </div>
            </div>  
        )
    }
}

export default LoginForm