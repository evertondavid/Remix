pragma solidity >=0.4.22 <0.6.0;

contract BasicContract { 
    
    string fName; 
    uint age; 
    
    //Metodo para atualizar p'ágina sempre que mudar o contrato
    event Instructor(
       string name,
       uint age
    );
    
    // contrutor, so sera chamado uma unica vez
    constructor(string memory _fName, uint _age) public { 
        fName = _fName; 
        age = _age; 
    }
    
    function setInstructor(string memory _fName, uint _age) public { 
        fName = _fName; 
        age = _age; 
        // Atualiza p'ágina web3
        emit Instructor(_fName, _age);
    } 

    function getInstructor() public view returns (string memory, uint) { 
        return (fName, age); 
    } 
}
