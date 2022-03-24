pragma solidity 0.5.0;

contract School {
    mapping (address => uint ) public Students;  //get all students>public
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