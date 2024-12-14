// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity version

contract SimpleStorage {

    // basic type data 
    // unsigned integer 
    uint256 public favNumber;
    // unsigned integer array
    // uint256[] listFavNumber;

    //struct 
    struct Person {
        uint256 age;
        string name;
        string hometown;
    }

    // array not best practice
    // Person public  siA = Person({age: 50, name: "si A", hometown: "Aceh"});
    // Person public  siB = Person({age: 50, name: "si B", hometown: "Bandung"});
    // Person public  siC = Person({age: 50, name: "si C", hometown: "Cirebon"});

    // array dinamic
    Person[] public peopleWNI;
    // array static
    // Person[3] public peopleWNIConstant;

    //mapping 
    mapping(string => uint256) public  nameDataList;

    function storeData(uint256 _favNumber) public virtual {
        favNumber = _favNumber;
        retrieve();
    }

    // view, pure .. the data pure
    function retrieve() public view returns (uint256) {
        return favNumber;
    }

    //calldata, memory and storage
    // temporary calldata you cannot updated string
    // temporary memory you can updated string
    // permanent storage you can updated string
    function storePerson(string memory _name, uint256 _age, string memory _hometown) public {
        peopleWNI.push( Person(_age, _name, _hometown));
        nameDataList[_name] = _age;
    }



}