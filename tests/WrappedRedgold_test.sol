// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/WrappedRedgold.sol";

contract WrappedRedgoldTest is WrappedRedgold {

    function testTokenInitialValues() public {
        Assert.equal(name(), "WrappedRedgold", "token name did not match");
        Assert.equal(symbol(), "wRDG", "token symbol did not match");
        Assert.equal(decimals(), 18, "token decimals did not match");
        Assert.equal(totalSupply(), 0, "token supply should be zero");
    }
}