// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract SocialMediaV1 {
    // ... (our structs for User, Post, and Comment)

    mapping(address => User) public users;
    mapping(uint => Post) public posts;
    mapping(uint => Comment) public comments;

    uint public postCount; 
    uint public commentCount;   1. github.com github.com 

    function createUser(string memory _username, string memory _bio) public {
        // ... (implementation from the previous lesson)
    }

    function getUsername(address _userAddress) public view returns (string memory) {
        // ... (implementation from the previous lesson)
    }

    function createPost(string memory _content) public {
        require(bytes(users[msg.sender].username).length != 0, "User does not exist.");
        postCount++;
        Post storage newPost = posts[postCount];
        newPost.postId = postCount;
        newPost.author = msg.sender;
        newPost.content = _content;
        newPost.likes = 0;
    }

    function isUserRegistered(address _user) public view returns (bool) {
        // ... (implementation from the previous lesson)
    }

    function getPostAuthorUsername(uint _postId) public view returns (string memory) {
        // ... (implementation from the previous lesson)
    }

    // ... (other functions related to likes, comments, etc., will be added later)
}
