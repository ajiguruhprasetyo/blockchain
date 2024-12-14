// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listSimpleStorageAddress;

    function createSimpleStorageContract() public {
        SimpleStorage addSimpleStorage = new SimpleStorage();
        listSimpleStorageAddress.push(addSimpleStorage);
    }

    function storageFactoryStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public  {
        //address
        //ABI Aplication Binary Interface
        SimpleStorage mySimpleStorage = listSimpleStorageAddress[_simpleStorageIndex];
        mySimpleStorage.storeData(_simpleStorageNumber);
    }

    function getStorageFactory(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorageData = listSimpleStorageAddress[_simpleStorageIndex];
        return mySimpleStorageData.retrieve();
    }
}