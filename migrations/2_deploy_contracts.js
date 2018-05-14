var dAppInventory = artifacts.require("./dAppInventory.sol");

module.exports = function (deployer) {
    deployer.deploy(dAppInventory);
};
