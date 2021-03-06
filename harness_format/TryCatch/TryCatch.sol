pragma solidity ^0.6.0;

interface DataFeed {
    function getData(address token) external returns (uint256 value);
}

contract FeedConsumer {
    DataFeed feed;
    uint256 errorCount;

    function rate(address token) public returns (uint256 value, bool success) {
        // Permanently disable the mechanism if there are
        // more than 10 errors.
        require(errorCount < 10);
        try feed.getData(token) returns (uint256 v) {
            return (v, true);
        } catch Error(string memory) /*reason*/ {
            // This is executed in case
            // revert was called inside getData
            // and a reason string was provided.
            errorCount++;
            return (0, false);
        } catch (bytes memory) /*lowLevelData*/ {
            // This is executed in case revert() was used
            // or there was a failing assertion, division
            // by zero, etc. inside getData.
            errorCount++;
            return (0, false);
        }
    }

    function rate2(address token)
        public
        returns (uint256 value, bool success)
    {
        // Permanently disable the mechanism if there are
        // more than 10 errors.
        require(errorCount < 10);
        try feed.getData(token) returns (
            uint256 v,
            uint256 v1,
            uint256 v2,
            uint256 v3,
            uint256 v4,
            uint256 v5,
            uint256 v6,
            uint256 v7,
            uint256 v8
        ) {
            return (v, true);
        } catch Error(string memory) /*reason*/ {
            // This is executed in case
            // revert was called inside getData
            // and a reason string was provided.
            errorCount++;
            return (0, false);
        } catch (bytes memory) /*lowLevelData*/ {
            // This is executed in case revert() was used
            // or there was a failing assertion, division
            // by zero, etc. inside getData.
            errorCount++;
            return (0, false);
        }
    }

    function rate3(address token)
        public
        returns (uint256 value, bool success)
    {
        // Permanently disable the mechanism if there are
        // more than 10 errors.
        require(errorCount < 10);
        try feed.getData(token) {
            return (v, true);
        } catch Error(string memory) /*reason*/ {
            // This is executed in case
            // revert was called inside getData
            // and a reason string was provided.
            errorCount++;
            return (0, false);
        } catch {
            // This is executed in case revert() was used
            // or there was a failing assertion, division
            // by zero, etc. inside getData.
            errorCount++;
            return (0, false);
        }
    }

    function rate4(address token)
        public
        returns (uint256 value, bool success)
    {
        // Permanently disable the mechanism if there are
        // more than 10 errors.
        require(errorCount < 10);
        try feed.getData(token) returns (uint256 v) {
            return (v, true);
        } catch Error(string memory) /*reason*/ {
            // This is executed in case
            // revert was called inside getData
            // and a reason string was provided.
            errorCount++;
            return (0, false);
        } catch Panic(uint256) /*errorCode*/ {
            // This is executed in case of a panic,
            // i.e. a serious error like division by zero
            // or overflow. The error code can be used
            // to determine the kind of error.
            errorCount++;
            return (0, false);
        } catch (bytes memory) /*lowLevelData*/ {
            // This is executed in case revert() was used.
            errorCount++;
            return (0, false);
        }
    }
}
