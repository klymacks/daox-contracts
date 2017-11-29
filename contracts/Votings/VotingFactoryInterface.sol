pragma solidity ^0.4.11;


interface VotingFactoryInterface {
    function createProposal(address _creator, string _description, uint _duration, bytes32[10] _options) external returns (address);

    function createWithdrawal(address _creator, string _description, uint _duration, uint _sum, uint quorum) external returns (address);

    function createRefund(address _creator, string _description, uint _duration, uint quorum) external returns (address);

    function createChangeWhiteList(address _creator, string _description, uint _duration, uint quorum, address _addr, uint action) external returns (address);

    function setDaoFactory(address _dao) external;
}
