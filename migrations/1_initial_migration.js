const Migrations = artifacts.require("Migrations");
const GameItem = artifacts.require("GameItem");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(GameItem);
};
