// const ReserveProviderToken = artifacts.require("ReserveProviderToken");
// const SimpleSwap = artifacts.require("SimpleSwap");

// module.exports = async function(deployer) {
//   // Deploy the ReserveProviderToken contract
//   await deployer.deploy(SimpleSwap);

//   // Deploy the FlyAwayInsurance contract with the address of the deployed ReserveProviderToken
//   // await deployer.deploy(FlyAwayInsurance, reserveProviderTokenInstance.address);
// };
const SimpleSwap = artifacts.require("SimpleSwap");

module.exports = function (deployer) {
  const initialX = 1000; // Replace with the initial quantity of token X
  const initialY = 2000; // Replace with the initial quantity of token Y

  deployer.deploy(SimpleSwap, initialX, initialY);
};