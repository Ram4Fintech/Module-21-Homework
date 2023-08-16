pragma solidity ^0.5.0 ;

import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol" ;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol" ;


contract KaseiCoinCrowdSale is Crowdsale, MintedCrowdsale {
    constructor(
        uint rate, 
        address payable wallet,
        KaseiCoin token
    )

    Crowdsale(rate, wallet, token) public {}
}

contract KaseiCoinCrowdsaleDeployer {
    address public kasei_token_address ;
    address public kasei_crowdsale_address ;
    constructor(
        string memory name, 
        string memory symbol,
        address payable wallet
    )
        public

    {
          KaseiCoin token = new KaseiCoin(name, symbol, 0) ;
          kasei_token_address = address(token) ;

          KaseiCoinCrowdSale kasei_crowdsale = new KaseiCoinCrowdSale(1,wallet, token) ;
          kasei_crowdsale_address = address(kasei_crowdsale) ;

          token.addMinter(kasei_crowdsale_address) ;
          token.renounceMinter() ;  

    }   
}




    