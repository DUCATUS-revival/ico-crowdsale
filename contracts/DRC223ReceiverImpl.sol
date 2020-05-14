pragma solidity ^0.4.23;

import "./sc-library/contracts/DRC223/DRC223Receiver.sol";


contract SuccessfulDRC223Receiver is DRC223Receiver {
    event Invoked(address from, uint value, bytes data);

    function tokenFallback(address _from, uint _value, bytes _data) public {
        emit Invoked(_from, _value, _data);
    }
}


contract FailingDRC223Receiver is DRC223Receiver {
    function tokenFallback(address, uint, bytes) public {
        revert();
    }
}


contract DRC223ReceiverWithoutTokenFallback {
}
