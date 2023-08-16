# Module-21-Homework

## Background:
The task is to create and deploy a new cryptocurrency coin called KaseiCoin for the first human colony being set up in Mars. This KaseiCoin will be a fungible token which is ERC 20 compliant. Alongside this, there should be a launch of a crowdsale to enable people travelling to Mars to be able to convert their earthly monies to KaseiCoins

For acheiving the above, the following steps are undertaken:

## Step 1: Creation of KaseiCoin Token contract
- Compiled this contract using the pragma solidity 0.5.0 version of the compiler
- The given starter file for KaseiCoin.sol is imported into the Remix IDE
- From the OpenZeppelin library, these contracts are imported: ERC 20, ERC20Detailed and ERC20Mintable
- The KaseiCoin contract was created and within it, the constructor was added with name, symbol and initial_supply as the parameters.
- Continuing on with the constructor, a call was made on ERC20Detailed contract by passing on the parameters - name, symbol and 18 which is the value of the decimals parameter
- The contract was compiled and all errors debugged
- An image shpwing the deployment of this contract is attached here: 
  ![Alt text](<KaseiCoin contract deployment image 1.png>)

  ## Step 2: Creation of the KaseiCoin Crowdsale contract:
- Similar to the above step, I used the pragma solidity version of the compiler for this contract as well
- The following imports were made:
    i) KaseiCoin.sol file in full from Step 1 above;
    ii) From Open Zeppelin library, the contract for crowdsale.sol; and
    iii) From Open Zeppelin library, the contract for MintedCrowdsale.sol.
- The KaseiCoinCrowdSale contract is created as a Crowdsale and MintedCrowdSale contracts
- Inside the contract, the constructor is created with the parameters specied as - rate, wallet and token.
- A couple of images showing the successful deploment of this contract are shown here:
![Alt text](<KaseiCoinCrowdsale contract deployment image 2 part 1.png>)
![Alt text](<KaseiCoinCrowdsale contract deployment image 2 part 2-1.png>)

## Step 3: Creation of the KaseiCoinDeployer contract:
- Another contract is created for KaseiContractSaleDeployer.
- Within this contract, the kasei_token_address and kasei_crowdsale_address variables are created as address public variables respectively
- Further on, within this contract which is public, the constructor is created with the parameters of name, symbol and wallet
- Inside the body of the contructor, an instance of KaseiCointoken contract was created by assigning the kasei_token_address to it
- Another instance of KaseiCoinCrowdsale contract was created by using the parameters - rate as 1, wallet as wallet and token as taken where KaseiCoin is stored
- The address of the KaseiCoin crowdsale was assigned to the variable kasei_crowdsale_address
- The KaseiCoinCrowdSale contract was set as minter
- Lastly, the KaseiCoinCrowdsaleDeployer was made to renounce its minter role
The evidence of this KaseiCoin Deployer contract's successful deployment is shown in this attached video:
<video src="Deployment%20and%20running%20of%20KaseiCoin(KAI).mp4" controls title="Title"></video>

## Step 4: Deploying and testing the Crowdsale on a local blockchain - Ganache:
- I used the Ganache blockchain for this smart contract. The following image is a screenshot of the contract KaseiCoinCrowdSale on Remix prior to deploying it on the Ganache Provider:
![Alt text](<Prior to deploying on Ganache Provider image 3.png>)
- Metamask wallet was created and connected to the Ganache blockchain. Please see image here:
![Alt text](<Metamask account wallet connected to Ganache blockchain network successfully.png>)
- Further experimentation on the smart contract using Remix are shown below:
- Confirmation of decimals which was missed out earlier in deployment:
![Alt text](<Confirmation of decimals in Deployment of KaseiCoin(KAI) whioch was missed in the video.png>)
- Post minting of 5 ETH:
![Alt text](<Post minting of 5 ETH.png>)
- Balance confirmation after transferring out of 3 ETH:
![Alt text](<Balance after transferring out 3 ETH from the account.png>)


Please note that all the above images and video are also placed under the folder named Evaluation Evidence