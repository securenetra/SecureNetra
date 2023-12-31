// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

/// @dev This interface defines the methods for secure
interface secure {

    /// @dev Reset the blockCursor
    /// @param blockCursor blockCursor value
    function setBlockCursor(uint blockCursor) external;
    
    /// @dev secure node transfer settlement. This method is triggered during secure node transfer and must be called by secure node contract
    /// @param from Transfer from address
    /// @param to Transfer to address
    function settle(address from, address to) external;

    /// @dev Claim nest
    function claim() external;

    /// @dev Calculation of ore drawing increment
    /// @return Ore drawing increment
    function increment() external view returns (uint);

    /// @dev Query the current available nest
    /// @param owner Destination address
    /// @return Number of nest currently available
    function earned(address owner) external view returns (uint);

    /// @dev Get generatedsecure value
    /// @return Generatedsecure value
    function getGeneratedsecure() external view returns (uint);

    /// @dev Get blockCursor value
    /// @return blockCursor value
    function getBlockCursor() external view returns (uint);
}
