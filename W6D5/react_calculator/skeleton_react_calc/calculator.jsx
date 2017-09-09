import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    };

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.divide = this.divide.bind(this);
    this.multiply = this.multiply.bind(this);
  }

  //your code here
  setNum1(e) {
    e.preventDefault();
    let input1 = document.getElementById('num1');
    let val = input1.value;
    // const num1 = e.target.value ? parseInt(e.target.value) : ""
    this.setState({num1: val});
    console.log(this);
    console.log(this.state.num1);
  }

  setNum2(e) {
    e.preventDefault();
    let val = document.getElementById('num2').value;
    // const num2 = e.target.value ? parseInt(e.target.value) : ""
    this.setState({num2: val});
  }

  add(e) {
    console.log('add');
    e.preventDefault();
    let value = parseInt(this.state.num1) + parseInt(this.state.num2);
    this.setState({result: value});
  }
  multiply(e) {
    console.log('multiply');
    e.preventDefault();
    let value = parseInt(this.state.num1) * parseInt(this.state.num2);
    this.setState({result: value});
  }
  subtract(e) {
    console.log('subtract');
    e.preventDefault();
    let value = parseInt(this.state.num1) - parseInt(this.state.num2);
    this.setState({result: value});
  }
  divide(e) {
    console.log('divide');
    e.preventDefault();
    let value = parseInt(this.state.num1) / parseInt(this.state.num2);
    this.setState({result: value});
  }

  clear(e) {
    console.log('clear');
    e.preventDefault();
    this.setState({result: 0, num1: "", num2: ""});
  }

  clickHandler(e) {
    e.preventDefault();
    console.log('clicked');
  }
  render(){
    let {result, num1, num2 } = this.state;
    // why don't we pass the value of the input to the function directly here.
    return (
      <div>

        <h1>{result}</h1>
        <input id="num1"
               onChange={ this.setNum1.bind(this) }
               type="number" value={num1}>

        </input>
        <input id="num2"
               onChange={this.setNum2.bind(this)}
               type="number" value={num2}>
        </input>
        <button onClick={this.add.bind(this)}>+</button>
        <button onClick={this.subtract.bind(this)}>-</button>
        <button onClick={this.multiply.bind(this)}>*</button>
        <button onClick={this.divide.bind(this)}>/</button>
        <button onClick={this.clear.bind(this)}>clear</button>
      </div>
    );
  }
}

export default Calculator;
