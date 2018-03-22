pragma solidity ^0.4.0;

import "../Token/TokenInterface.sol";
import "../Votings/VotingFactoryInterface.sol";

contract CrowdsaleDAOFields {
    uint public etherRate;
    uint public DXTRate;
    uint public softCap;
    uint public hardCap;
    uint public startTime;
    uint public endTime;
    bool public canInitCrowdsaleParameters = true;
    bool public canInitStateParameters = true;
    bool public canInitBonuses = true;
    bool public canSetWhiteList = true;
    uint public commissionRaised = 0;
    uint public weiRaised = 0;
    uint public DXTRaised = 0;
    mapping(address => uint) public depositedWei;
    mapping(address => uint) public depositedDXT;
    mapping(address => uint) public depositedWithCommission;
    bool public crowdsaleFinished;
    bool public refundableSoftCap = false;
    uint public newEtherRate = 0;
    uint public newDXTRate = 0;
    address public serviceContract;
    uint[] public teamBonusesArr;
    address[] public team;
    uint[] public teamHold;
    bool[] public teamServiceMember;
    TokenInterface public token;
    VotingFactoryInterface public votingFactory;
    address public commissionContract;
    string public name;
    uint public created_at = now; // UNIX time
    bytes32 public description;
    mapping(address => bool) public votings;
    bool public refundable = false;
    uint public lastWithdrawalTimestamp = 0;
    address[] public whiteListArr;
    mapping(address => bool) public whiteList;
    mapping(address => uint) public teamBonuses;
    uint[] public bonusPeriods;
    uint[] public bonusEtherRates;
    uint[] public bonusDXTRates;
    uint public teamTokensAmount;
    uint constant internal withdrawalPeriod = 120 * 24 * 60 * 60;
    TokenInterface public DXT;
    uint public tokenMintedByEther;
    uint public tokenMintedByDXT;
    bool public dxtPayments;
}
