pragma solidity ^0.4.0;

import "./VotingFactoryInterface.sol";
import "./Proposal.sol";
import "./Withdrawal.sol";
import "./Refund.sol";
import "./WhiteList.sol";
import "../DAO/DAOFactoryInterface.sol";

contract VotingFactory is VotingFactoryInterface {
    address baseVoting;
    DAOFactoryInterface daoFactory;
    bool private setted = false;

    function VotingFactory(address _baseVoting){
        baseVoting = _baseVoting;
    }

    function createProposal(address _creator, string _description, uint _duration, bytes32[10] _options) onlyDAO external returns (address) {
        return new Proposal(baseVoting, msg.sender, _creator, _description, _duration, _options);
    }

    function createWithdrawal(address _creator, string _description, uint _duration, uint _sum, uint quorum) onlyDAO external returns (address) {
        return new Withdrawal(baseVoting, msg.sender, _creator, _description, _duration, _sum, quorum);
    }

    function createRefund(address _creator, string _description, uint _duration, uint quorum) onlyDAO external returns (address) {
        return new Refund(baseVoting, msg.sender, _creator, _description, _duration, quorum);
    }

    function createChangeWhiteList(address _creator, string _description, uint _duration, uint quorum, address _addr, uint action) onlyDAO external returns (address) {
        return new WhiteList(baseVoting, msg.sender, _creator, _description, _duration, quorum, _addr, action);
    }

    function setDaoFactory(address _dao) external {
        require(!setted && _dao != 0x0);
        setted = true;
        daoFactory = DAOFactoryInterface(_dao);
    }

    modifier onlyDAO() {
        require(daoFactory.exists(msg.sender));
        _;
    }
}
