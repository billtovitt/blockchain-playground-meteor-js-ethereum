import React, { Component } from 'react';
import './App.css';
import web3 from 'web3';
var ethereumClient =  new web3(new web3.providers.HttpProvider('http://localhost:8545'));

var peopleContractABI  =[{"constant":true,"inputs":[],"name":"getPeople","outputs":[{"name":"","type":"bytes32[]"},{"name":"","type":"bytes32[]"},{"name":"","type":"uint256[]"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_firstName","type":"bytes32"},{"name":"_lastName","type":"bytes32"},{"name":"_age","type":"uint256"}],"name":"addPerson","outputs":[{"name":"success","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"people","outputs":[{"name":"firstName","type":"bytes32"},{"name":"lastName","type":"bytes32"},{"name":"age","type":"uint256"}],"payable":false,"type":"function"}];

var peopleContractAdrress = '0xfdb15a090e049016b062ce339c17a66cb32f7258';

var peopleContract =  ethereumClient.eth.contract(peopleContractABI).at(peopleContractAdrress);

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      firstName: [],
      lastName: [],
      ages: []
    }
  }
  componentWillMount(){
    var data = peopleContract.getPeople();
    this.setState({
      firstNames: String(data[0]).split(','),
      lastNames: String(data[1]).split(','),
      ages: String(data[2]).split(',')
    });
  }
render () {
    return {
      <div className="App">


      <div className="App-content">
      <pre>{this.state.firstNames}</pre>
      <pre>{this.state.lastNames}</pre>
        <pre>{this.state.ages}</pre>
            </div>
            </div>
    );

}
}
export default App;
