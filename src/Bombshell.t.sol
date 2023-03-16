
// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.16;

import "forge-std/Test.sol";
import {DssTest, GodMode} from "dss-test/DssTest.sol";

import {Bombshell} from "./Bombshell.sol";


interface ChainlogLike {
    function getAddress(bytes32) external view returns (address);
}

contract BombshellTest is DssTest {

    ChainlogLike chainlog;
    address pauseProxy;

    function setUp() public {

        chainlog = ChainlogLike(0xdA0Ab1e0017DEbCd72Be8599041a2aa3bA7e740F);
        pauseProxy = chainlog.getAddress("MCD_PAUSE_PROXY");
    }

    function testBombshell() public {

        vm.deal(address(this), 1 ether);
        assertEq(address(this).balance, 1 ether);

        uint256 startingBalance = pauseProxy.balance;

        new Bombshell{value: 1 ether}(pauseProxy);

        assertEq(pauseProxy.balance, startingBalance + 1 ether);
    }

}
