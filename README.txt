                               SAFE REMOTE PURCHASE

CONTENT OF THE FILE
----------------------------------------------------
*GROUP DETAILS

*SMART CONTRACT DESCRIPTION

*FUNCTION DETAILS

*EXTRA FEATURES ADDED

----------------------------------------------------
GROUP NUMBER 21-
NAME:                     BITS ID:

V.Keshav                  2020AAPS0402H

Divyam Kumar              2020AAPS2112H

Aneesh Gupta              2020AAPS1766H

Keshav Marodia            2020A3PS0608H

----------------------------------------------------
SMART CONTRACT DETAILS-
This smart contract has been invented to solve the problem that sends the amount to a website only when the item has been delivered to the user and off-loading of the item starts only when the user has paid the amount of the item to 
the smart contract which is deployed on the blockchain.This smart contract has been build using Solidity language.The contract has the following features-

  -The seller and buyer both have will need to stake 2x the value of what they are selling or buying.

  -By staking 2x of the value of his widget to the Smart Contract, Seller is committed to delivering his widget to Buyer. Or else he loses double the value of his widget. 

  -When the transaction is successful,the seller will receive the value that he deposited plus the value of the product.

----------------------------------------------------
FUNCTION DETAILS-
These are the following functions that we implemented in our contract:
 -confirmPurchase():It checks whether the buyer has deposited the value two times the value of the item.It deposits the buyer value in the smart contract.
	
 -confirmDelivery():It gives the buyer back the deposit that he made in the smart contract. 

 -paySeller():It gives the seller the the value that he deposited in the smart contract plus the value of the item.

These are the following variables that we implemented in our contract:
 -costPrice:It stores the price or the value of the item that is involved in the transaction.

 -seller:It stores the address of the seller.

 -buyer:It stores the address of the buyer.

 -state:It stores the status of the transaction(initiated,locked,released,idle).

These are the following strucutres that we implemented in our contract:
 -checkState():It checks whether the current status of the transaction and the current function state is same or not.

 -isValidBuyer():It checks whether the user right now is the buyer or not.

 -isValidSeller():It checks whether the user right now is the seller or not.

---------------------------------------------------
Extra Features Added-
We have added one additional feature that seller can anytime abort the whole transaction and the deposited values will be returned back to the owners.
Function Used is-abortPurchase():It changes the state of the transaction to inactive and stops the transaction at once and returns back all the deposits to their original owner.


HOW TO PERFORM A SAFE PURCHASE-
-Select an account from the options given in the deploy and run section. This is the seller account.
-Deploy the contract after entering twice the cost price of the product under the "value" input field.
-You can verify the seller account through the interface created by the deployed contract.
-Change the account from the options. This is our buyer account.
-Click on the confirmPurchase option from the interface after entering twice the cost price under the value field.  
-Now the contract is locked as a purchase is initiated.
-Click on confirmDelivery to complete the purchase. The price amount is reduced from the contract balance and hence the buyer's account.
-Change the account back to the seller account.
-Click on paySeller to give back the seller's deposit and the price amount obtained from the buyer.
-The transaction is complete. Balance of the contract will be 0 in the end.
-The state of the transaction at each step can be viewed from the interface.



WAGMI from Group 21                            ( ͡❛ ͜ʖ ͡❛) ( ͡❛ ͜ʖ ͡❛) ( ͡❛ ͜ʖ ͡❛) ( ͡❛ ͜ʖ ͡❛)
 --------*****************************************************END***********************************************************----------

