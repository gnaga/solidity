// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0;

import "./math.sol";

contract myLib {
    using SafeMath for uint256;
    uint256 public value;
    uint256 public value1;

    function calculate(uint _value1, uint _value2) public {
        //by adding "using SafeMath for uint256", we can directly manuplate on variable 
        value = _value1.div(_value2);
        //tradition approach to call function.
        value1 = SafeMath.div(_value1,_value2);
    }

}
