pragma solidity ^0.5.0;

/** Creating the smartcontract */
contract TodoList {
    uint public taskCount = 0;

    /** Modelling a task on a TodoList */
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Check out Hive.com");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}