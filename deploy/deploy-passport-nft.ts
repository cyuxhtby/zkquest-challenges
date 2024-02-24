import { deployContract } from "./utils";

// yarn hardhat deploy-zksync --script deploy-passport-nft.ts

export default async function () {
  const contractArtifactName = "ZKPassportNFT";
  const constructorArguments = [];
  const contractInstance = await deployContract(contractArtifactName, constructorArguments);

  const zeekWallet = "0xc8efafb5F8cbB385b3A3fA20aC7e480F0638Aa87";
  await contractInstance.mintAndTransferNFT(zeekWallet);
}
