// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SafePurchase {
    uint public costPrice;
    address payable public seller;
    address payable public buyer;

    enum PurchaseState { Initiated, Locked, Released, Idle}
    /*state 0 - Initiated
      state 1 - Locked
      state 2 - Released
      state 3 - Idle*/
    PurchaseState public state;

   //Puts seller deposit of 2x the price of product in the contract when deployed
    constructor() payable {
        seller = payable(msg.sender);
        costPrice = msg.value/2;
    }
   
    // these modifiers help in validating the operations and are used in function definitions
    modifier checkState(PurchaseState _state_){
        if(state != _state_){
            revert ("This operation cannot be performed in the current state");
        }
        _;
    }
    
    modifier isValidBuyer(){
        if(msg.sender != buyer){
            revert("Only the original buyer can perform this operation");
        } 
        _;
    }

     modifier isValidSeller(){
        if(msg.sender != seller){
            revert("Only the original seller can perform this operation") ;
        } 
        _;
    }
    //buyer puts deposit which is twice the price of product in the smart contract
    function confirmPurchase() external checkState(PurchaseState.Initiated) payable {
        require(msg.value == (2 * costPrice),"Please send 2x the purchase amount");
        buyer = payable(msg.sender);
        state = PurchaseState.Locked;
    }
    //buyer confirms receival of package and hence the price of the product is deducted from the buyer's account
    function confirmDelivery() external isValidBuyer checkState(PurchaseState.Locked) {
        state = PurchaseState.Released;
        buyer.transfer(costPrice);

    }
    //seller gets the amount paid by the buyer + their deposit amount only after the buyer confirms delivery 
    function paySeller() external isValidSeller checkState(PurchaseState.Released) {
        state = PurchaseState.Idle;
        seller.transfer(3 * costPrice);
    }
    //the seller can pull out their deposit from the contract if the buyer does not initiate the purchase
    function abortPurchase() external isValidSeller checkState(PurchaseState.Initiated) {
        state = PurchaseState.Idle;
        seller.transfer(address(this).balance);
    }

}