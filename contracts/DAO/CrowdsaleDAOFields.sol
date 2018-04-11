pragma solidity ^0.4.0;

import "../Token/TokenInterface.sol";
import "../Votings/VotingFactoryInterface.sol";

contract CrowdsaleDAOFields {
    uint public etherRate;
    uint public DXCRate;
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
    uint public DXCRaised = 0;
    uint public fundsRaised = 0;
    mapping(address => uint) public depositedWei;
    mapping(address => uint) public depositedDXC;
    bool public crowdsaleFinished;
    bool public refundableSoftCap = false;
    uint public newEtherRate = 0;
    uint public newDXCRate = 0;
    address public serviceContract;
    uint[] public teamBonusesArr;
    address[] public team;
    uint[] public teamHold;
    bool[] public teamServiceMember;
    TokenInterface public token;
    VotingFactoryInterface public votingFactory;
    address public commissionContract;
    string public name;
	string public description;
    uint public created_at = now; // UNIX time
    mapping(address => bool) public votings;
    bool public refundable = false;
    uint public lastWithdrawalTimestamp = 0;
    address[] public whiteListArr;
    mapping(address => bool) public whiteList;
    mapping(address => uint) public teamBonuses;
    uint[] public bonusPeriods;
    uint[] public bonusEtherRates;
    uint[] public bonusDXCRates;
    uint public teamTokensAmount;
    uint constant internal withdrawalPeriod = 120 * 24 * 60 * 60;
    TokenInterface public DXC;
    uint public tokensMintedByEther;
    uint public tokensMintedByDXC;
    bool public dxcPayments;
    uint internal constant multiplier = 100000;
    uint internal constant percentMultiplier = 100;
}
