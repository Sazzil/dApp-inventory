pragma solidity ^0.4.23;


contract ApplicationsInfo {

    enum ApplicationPlatform { Windows, Android }

    struct Application {
        address developer;
        string name;
        uint category;
        ApplicationPlatform platform;
        string downloadUrl;
        string description;
        string imageUrl;
    }

    Application[] public ApplicationsList;

    function getApplicationsCount() public returns(uint) {
        return ApplicationsList.length;
    }

}