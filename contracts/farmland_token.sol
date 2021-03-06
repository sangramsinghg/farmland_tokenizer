pragma solidity ^0.5.0;



//  Import the following contracts from the OpenZeppelin library:
//    * `ERC20`
//    * `ERC20Detailed`
//    * `ERC20Mintable`
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// Create a constructor for the FarmlandToken contract and have the contract inherit the libraries that you imported from OpenZeppelin.
contract FarmlandToken is ERC20, ERC20Detailed, ERC20Mintable {
    string private _parcelDetails = "San Joaquin #5544";
    string private _parcelOwner = "Sangram";
    uint16 private _totalAcres = 40;
    
    constructor(
        string memory parcelOwner,
        string memory parcelDetails,
        uint16 totalAcres,
        string memory name,
        string memory symbol,
        uint initial_supply
    )
        ERC20Detailed(name, symbol, 18)
        public
    {
        _parcelOwner = parcelOwner;
        _parcelDetails = parcelDetails;
        _totalAcres = totalAcres;
    }

    function parcelDetails() public view returns (string memory) {
        return _parcelDetails;
    }

    function parcelOwner() public view returns (string memory) {
        return _parcelOwner;
    }

    function totalAcres() public view returns (uint16) {
        return _totalAcres;
    }

}