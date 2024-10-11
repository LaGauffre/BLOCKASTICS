// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleSwap {
    // Tokens X and Y reserves
    uint256 public X;
    uint256 public Y;

    // Owner of the contract
    address public owner;

    // Mapping to track liquidity providers and their shares
    mapping(address => uint256) public liquidityProviderShares;

    // Events
    event LiquidityAdded(address indexed provider, uint256 amountX, uint256 amountY);
    event LiquidityWithdrawn(address indexed provider, uint256 amountX, uint256 amountY);
    event Swapped(address indexed trader, uint256 amountIn, uint256 amountOut, bool isXtoY);

    constructor(uint256 x, uint256 y) {
        require(x > 0 && y > 0, "Initial liquidity cannot be zero");

        // Set owner
        owner = msg.sender;

        // Initialize reserves
        X = x;
        Y = y;

        // Owner becomes the first liquidity provider
        liquidityProviderShares[owner] = sqrt(x * y);

        emit LiquidityAdded(owner, x, y);
    }

    // Modifier to check if the sender is a liquidity provider
    modifier onlyLiquidityProvider() {
        require(liquidityProviderShares[msg.sender] > 0, "Not a liquidity provider");
        _;
    }

    // Function to add liquidity, maintaining the same exchange rate
    function addLiquidity(uint256 x) external payable {
        // Calculate amountY to maintain the exchange rate
        uint256 y = (x * Y) / X;

        // Update reserves
        X += x;
        Y += y;

        // Update liquidity shares
        uint256 l = sqrt(x * y);
        liquidityProviderShares[msg.sender] += l;

        emit LiquidityAdded(msg.sender, x, y);
    }

    // Function to withdraw liquidity, maintaining the same exchange rate
    function withdrawLiquidity(uint256 x) external onlyLiquidityProvider {
        // Calculate the proportional amounts of X and Y to withdraw
        uint256 y = (x * Y) / X;
        uint256 l = sqrt(x * y);

        require(x <= X && y <= Y, "Insufficient liquidity");
        require(l <= liquidityProviderShares[msg.sender], "Insufficient shares");

        // Update reserves and shares
        X -= x;
        Y -= y;
        liquidityProviderShares[msg.sender] -= l;

        emit LiquidityWithdrawn(msg.sender, x, y);
    }

    // Function to swap token X for token Y (or vice versa), respecting the x*y = k rule
    function swapXForY(uint256 x) external payable {
        require(x > 0 && x < X, "Invalid amount");

        // Calculate amount of Y based on the constant product formula
        uint256 y = (x * Y) / (X + x);

        // Update reserves
        X += x;
        Y -= y;

        emit Swapped(msg.sender, x, y, true);
    }

    function swapYForX(uint256 y) external payable {
        require(y > 0 && y < Y, "Invalid amount");

        // Calculate amount of X based on the constant product formula
        uint256 x = (y * X) / (Y + y);

        // Update reserves
        Y += y;
        X -= x;

        emit Swapped(msg.sender, y, x, false);
    }

    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}