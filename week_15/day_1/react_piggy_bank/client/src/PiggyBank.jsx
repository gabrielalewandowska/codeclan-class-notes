import React from "react";

class PiggyBank extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      total: 0
    }
    this.addToSavings = this.addToSavings.bind(this);
    this.subtractFromSavings = this.subtractFromSavings.bind(this);
  }

  addToSavings(){
    this.setState({total: this.state.total + 1});
  }

  subtractFromSavings(){
    this.setState({total: this.state.total - 1});
  }

  render(){
    console.log(this);
    return <div className="bank-box">
      {this.props.title}
      <p>£{this.state.total}</p>
      <button onClick={ this.addToSavings}>Add</button>
      <button onClick={ this.subtractFromSavings}>Subtract</button>
    </div>
  }
}

export default PiggyBank;
