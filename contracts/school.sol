pragma solidity 0.5.0;

contract School {
    address public lecturer;
    mapping (address => uint ) public Students;  //get all students>public

    modifier(){
        require (msg.sender == lecturer , "Not Authorised");
        _;
    }
    // struct StudentDetails {
    //     string Name,
    //     uint Age,

    // }

    // function createStudent(address _student)public{
    //     Student [_student]
    // }
    function setScore(address _student , uint _score)
    public returns (bool) {
        Students[_student] = _score;
        return true;

    }
    function gettScore(address _student)
    public view returns (uint) {
        return Students[_student];
        
    }
}

//Allow school vc to read scores if school is public

// contract VC is School {
//     function readScore(address _student) public view return (uint){
//         returns Students[_student]
//     }
// }