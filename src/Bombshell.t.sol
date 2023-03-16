
// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.16;

import "forge-std/Test.sol";

import {Bombshell} from "./Bombshell.sol";


interface ChainlogLike {
    function getAddress(bytes32) external view returns (address);
}

contract BombshellTest is DSTest {
    // --- Math ---
    uint256 constant WAD = 10**18;

    ChainlogLike chainlog;

    function setUp() public {
        vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);
        chainlog = ChainlogLike(0xdA0Ab1e0017DEbCd72Be8599041a2aa3bA7e740F);
    }

    function testBombshell() public {

        vm.deal(address(this), 1 ether);


    }

}
