// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

library libErc20 {
    bytes32 constant ERC20_STORAGE_POSITION =
        keccak256("my.own.erc20.diamond.storage!!!");

    struct ERC20Storage {
        string _name;
        string _symbol;
        uint8 _decimal;
        uint256 _totalSupply;
        mapping(address => uint256) _balances;
        mapping(address => mapping(address => uint256)) _allowances;
        address _owner;
    }
}
