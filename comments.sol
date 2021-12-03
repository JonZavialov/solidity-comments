// SPDX-License-Identifier: MIT
// Jonathan Zavialov

pragma solidity ^0.6.0;

contract comments{

    struct comment{
        string name;
        string comment;
        uint256 index;
    }

    comment[] public commentList;
    mapping(string => string) public commentByName;

    function addComment(string memory _name, string memory _comment) public{
        commentList.push(comment({name: _name, comment: _comment, index: commentList.length}));
        commentByName[_name] = _comment;
    }

    function getCommentsLength() public view returns(uint256){
        return commentList.length;
    }

}