pragma solidity =0.5.16;
import "./MinePoolData.sol";
import "./baseProxy.sol";
/**
 * @title FPTCoin mine pool, which manager contract is FPTCoin.
 * @dev A smart-contract which distribute some mine coins by FPTCoin balance.
 *
 */
contract MinePoolProxy is MinePoolData,baseProxy {
    
    constructor (address implementation_) baseProxy(implementation_) public{
    }
    /**
     * @dev default function for foundation input miner coins.
     */
    function()external payable{
    }
    
    

    function setLpMineInfo(address /*liquidpool*/,address /*mineTokenAddress*/,uint256 /*mineAmount*/,uint256 /*mineInterval*/) public {
        delegateAndReturn();
    }

    
    /**
     * @dev changer liquid pool distributed time interval , only foundation owner can modify database.
     * @  reward the distributed token amount in the time interval
     * @  mineInterval the distributed time interval.
     */
    function setMineRate(uint256 /*reward*/,uint256/*rewardinterval*/) public {
        delegateAndReturn();
    }

    /**
     * @dev getting back the left mine token
     * @param reciever the reciever for getting back mine token
     */
    function getBackLeftMiningToken(address reciever)  public {
        delegateAndReturn();
    }
    
     /**
     * @dev user stake in lp token
     * @  lp uniswap liquid pool address
     * @  amount stake in amout
     */
    function stake(uint256 /*amount*/) public {
         delegateAndReturn();
    }  
    
    
   /**
     * @dev user  unstake to cancel mine
      * @  amount stake in amout
     */
    function unstake(uint256 /*amount*/) public {
         delegateAndReturn();
    }  
   
      /**
     * @dev user  unstake and get back reward
     * @  amount stake in amout
     */
    function exit() public {
         delegateAndReturn();
    }    

    /**
     * @dev user redeem mine rewards.
     */
    function getReward() public {
        delegateAndReturn();
    }    
    

///////////////////////////////////////////////////////////////////////////////////
    /**
     * @dev get stake balance
     */
    function balanceOf(address account) public view returns (uint256) {
        delegateToViewAndReturn();
    }

    /**
     * @dev retrieve user's stake balance.
     *  account user's account
     */
    function earned(address account) public view returns (uint256) {
        delegateToViewAndReturn();
    }
    
}