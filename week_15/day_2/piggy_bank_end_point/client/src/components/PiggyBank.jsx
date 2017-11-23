import React from 'react';

class PiggyBank extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      total: 0
    };
    // this.addToSavings = this.addToSavings.bind(this);
  }

  changeSavingsAmount(amount){
      this.setState((prevState) => {
        let newTotal = prevState.total + amount;
        if(newTotal < 0){
            newTotal = 0;
        }
        return {total: newTotal};
      });
  }

  componentWillMount(){
    console.log("component will mount!");
    var button = document.querySelector("button");
    console.log("Button: ", button);
  }

  componentDidMount(){
    console.log("component did mount");
    var button = document.querySelector("button");
    console.log("Button: ", button);
  }

  componentWillUpdate(nextProps, nextState){
    console.log("Component will update");
    console.log("NextProps: ", nextProps);
    console.log("NextState: ", nextState);
  }

  componentDidUpdate(prevProps, prevState){
    console.log("Comoinent did update");
    console.log("PrevProps: ", prevProps);
    console.log("PrevState: ", prevState);
  }

  render() {
    return (
      <div className="bank-box">
          <h1>{this.props.title}</h1>
          <p>Hello, world! I am a Piggy Bank. My owner is {this.props.owner}.</p>
          <p>I contain £{this.state.total}</p>
          <button onClick={ () => { this.changeSavingsAmount(this.props.depositAmount) } }>Add Funds</button>
          <button onClick={ () => { this.changeSavingsAmount(this.props.depositAmount / -1) } }>Withdraw</button>
      </div>
    );
  }
}

export default PiggyBank;
