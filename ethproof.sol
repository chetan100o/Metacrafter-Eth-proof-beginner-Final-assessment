pragma solidity 0.8.18;
contract MyToken {

    // public variables here
    string public tokenName = "EffortPoint";
    string public tokenAbbvr = "EP";
    uint public totalSupply = 0;


    // mapping variable here
    mapping(address=>uint) public tokenHolders;


    // mint function
    function mint(address _address, uint _value) public{
        totalSupply+=_value;
        tokenHolders[_address] += _value;
    }


    // burn function
    function burn(address _address, uint _value) public{
        require(tokenHolders[_address] > _value, "Cannot burn more than balance tokens");
        totalSupply-=_value;
        tokenHolders[_address] -= _value;
    }

}
