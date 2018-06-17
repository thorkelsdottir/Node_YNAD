//require the socket.io 
var io = require('socket.io')(5000);
//define an emty object variable for the chat
jChat = {};
//run function
jChat.getChat = function() {
    //connection
    try {
        io.on('connection', function(socket){
            socket.on('chat message', function(jData){
                // VISIBLE IN TERMINAL
                // console.log("Put in chat: " + jData); 
                // SENDS TO EVERYONE
                io.emit('chat message', jData);
            });
        });
    } catch(err) {
        return res.send('There was a problem connection to the socket.io');
    } 
}
//send to server.js
module.exports = jChat;