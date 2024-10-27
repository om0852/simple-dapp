const Funds = artifacts.require("Funder");

module.exports = function (deployer) {
  deployer.deploy(Funds);
};
