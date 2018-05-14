pragma solidity ^0.4.23;


import "./ApplicationsInfo.sol";
import "./Developers.sol";

contract DeveloperApplications is ApplicationsInfo, Developers {

    mapping(address => mapping(uint => Application)) DeveloperApplicationsList;


}