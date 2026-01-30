//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract StudentRegistry {
  struct student {
    string name;
    uint age;
    uint student_id;
  }
  mapping (uint => student) public students;
  student [] public studentList;

  function register (string memory _name, uint _age, uint _student_id) public {
    student memory newStudent = student ({
      name: _name,
      age: _age,
      student_id: _student_id
    });

    students[_student_id] = newStudent;
    studentList.push(newStudent);
  }

  function studentCount () public view returns (uint) {
    return studentList.length;
  }

}