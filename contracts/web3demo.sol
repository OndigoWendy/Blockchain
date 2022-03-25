pragma solidity 0.8.0;

contract web3contract {

    string statement;
    function writestatement(string  memory worlds)
     public returns (bool){
       statement = worlds;
       return true;
   }

   function printhelloworld() public view
    returns (string memory){
       return statement;
   }
}