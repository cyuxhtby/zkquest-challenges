import { deployContract } from "./utils";
import ethers from 'ethers';

// yarn hardhat deploy-zksync --script deploy-coffee-token.ts

export default async function () {
  const contractArtifactName = "CoffeeToken";
  const constructorArguments = [];
  const contractInstance = await deployContract(contractArtifactName, constructorArguments);

  const zeekWallet = "0xc8efafb5F8cbB385b3A3fA20aC7e480F0638Aa87";
  await contractInstance.mint(zeekWallet, '22750000000000000000');
}
