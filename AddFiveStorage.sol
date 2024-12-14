// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {

    //inheritance function from SimpleStorage addStore
    function storeData(uint256 _number) public override  {
        favNumber = _number + 5;
    } 
}