/*

██████╗ ██████╗████████████████████████████╗      ██████╗██████╗ █████╗███╗   █████████████████╗
██╔══████╔═══████╔════╚══██╔══██╔════██╔══██╗    ██╔════╝██╔══████╔══██████╗  ██╚══██╔══██╔════╝
██████╔██║   █████████╗  ██║  █████╗ ██████╔╝    ██║  █████████╔█████████╔██╗ ██║  ██║  ███████╗
██╔═══╝██║   ██╚════██║  ██║  ██╔══╝ ██╔══██╗    ██║   ████╔══████╔══████║╚██╗██║  ██║  ╚════██║
██║    ╚██████╔███████║  ██║  █████████║  ██║    ╚██████╔██║  ████║  ████║ ╚████║  ██║  ███████║
╚═╝     ╚═════╝╚══════╝  ╚═╝  ╚══════╚═╝  ╚═╝     ╚═════╝╚═╝  ╚═╚═╝  ╚═╚═╝  ╚═══╝  ╚═╝  ╚══════╝
                                                                                                
Made with ❤️ by Auryn.eth
Forked and modified by boilerrat.eth
*/
// SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.8.19;

contract PosterGrants {
    // Define a Post struct to hold the user, content, and tag
    struct Post {
        address user;
        string content;
        string tag;
    }

    // Declare an array of Post structs to hold all posts
    Post[] public posts;

    // Declare an event to notify external consumers
    event NewPost(address indexed user, string content, string indexed tag);

    // Function to post content and tag
    function post(string calldata content, string calldata tag) public {
        // Create a new Post
        Post memory newPost = Post({
            user: msg.sender,
            content: content,
            tag: tag
        });

        // Add the new Post to the posts array
        posts.push(newPost);

        // Emit the NewPost event
        emit NewPost(msg.sender, content, tag);
    }

    // Function to read a post by its index
    function readPost(uint256 index) public view returns(address, string memory, string memory) {
        require(index < posts.length, "Index out of bounds");
        Post memory postToRead = posts[index];
        return (postToRead.user, postToRead.content, postToRead.tag);
    }
}

