// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract DayChecker {
    enum Days { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday}
    function isWeekday(Days day) public pure returns (bool){
        require(uint(day) < 7, "Invalid Day");
        if(day == Days.Saturday || day== Days.Sunday){
            return false;
        }
        return true;
    }
    function isWeekend(Days day) public pure returns (bool) {
        require(uint(day)<7, "invalid day");
         if (day == Days.Saturday || day == Days.Sunday) {
            return true;
        }
        return false;
    }
    function checkAssert() public pure {
        Days testDay = Days.Monday;
        assert(testDay != Days.Sunday);
    }

    function forceRevert() public pure {
        revert("This Function reverts");
    }
}