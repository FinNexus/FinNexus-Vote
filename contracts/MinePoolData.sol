pragma solidity =0.5.16;
import "./openzeppelin/contracts/token/ERC20/SafeERC20.sol";

contract MinePoolData {
    
    IERC20  public fnx ;
    IERC20  public lp;
    address public rewardDistribution;
    
    uint256 internal _totalSupply;
    mapping(address => uint256) internal _balances;  

    uint256 public lastUpdateTime;
    uint256 public rewardPerTokenStored;
    uint256 public rewardRate;
    uint256 public rewardInterval;
    
    uint256 public reward; //reward token number per duration
    uint256 public duration;
    
    mapping(address => uint256) public rewards;   
        
    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public userGetRewardTime;
    
    //begin time for this rate
    uint256[] rewardPerTokenRecord;
    uint256[] rateChangeTimeRecord;
    
    uint256 public periodFinish = uint256(-1);
    
}