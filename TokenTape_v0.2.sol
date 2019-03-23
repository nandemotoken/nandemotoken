
pragma solidity ^0.5.2;

import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";


contract TokenTape is ERC721Full  {

    mapping (uint256 => string) public ownerinfo;


    constructor(
        string memory name, 
        string memory symbol
    )
        ERC721Full(name, symbol)
        public
    {
       // _mint(0xe3EeE18A530acc43D2F30946a5FF7E6eB9732f10, 1);
    }

       function newToken(address sendto)  public  {
         if (msg.sender == 0xE35B827177398D8d2FBA304d9cF53bc8fC1573B7){
        _mint(0xE35B827177398D8d2FBA304d9cF53bc8fC1573B7, totalSupply() + 1 );
        transferFrom(0xE35B827177398D8d2FBA304d9cF53bc8fC1573B7 , sendto , totalSupply());
         }
       }
         
         function setownerinfo(uint tokenid , string memory info) public {
             if (msg.sender == 0xE35B827177398D8d2FBA304d9cF53bc8fC1573B7 || msg.sender == 0xe3EeE18A530acc43D2F30946a5FF7E6eB9732f10){
                ownerinfo[tokenid] = info; 
             }
         }
        
          function getownerinfo(uint tokenid) public view returns (string memory)  {
             return ownerinfo[tokenid];
         }

}
