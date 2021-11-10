"use strict";

// 모듈
const express = require("express");
const app = express();
const socketIO = require("socket.io");
const http = require("http");
const server = http.createServer(app);
const io = socketIO(server);
const util = require("util");
const ndb = require("./src/config/ndb");

// 라우팅
const feed = require("./src/routes/feed");
const feedComment = require("./src/routes/feedComment")
const user = require("./src/routes/user");
const shop = require("./src/routes/shop");
const tour = require("./src/routes/tour");
const chat = require("./src/routes/chat")


// 앱 세팅
app.use(express.static(`${__dirname}/src/public`));
app.use(express.json());
app.use(express.urlencoded({extended:true}));

app.use("/feed",feed);
app.use("/feedComment",feedComment);
app.use("/user",user);
app.use("/shop",shop);
app.use("/tour",tour);
app.use("/chat",chat);

let roomObject = {};

io.on('connection',(socket)=>{
    util.log('a user conneted');

    socket.on("join", function(roomId, fn){
        socket.join(roomId, function(){
	    util.log("Join", roomId, Object.keys(socket.rooms));
	});
	roomObject[socket.id] = roomId;
	console.log(roomObject);
	const clients = io.sockets.adapter.rooms[roomId].sockets;   
	const numClients = clients ? Object.keys(clients).length : 0;

	io.to(roomId).emit("joinCount",{memCount:numClients});
    });
    
    socket.on("leave", function(roomId,fn){
	if(roomId != null){
	    socket.leave(roomId);
	    console.log("socket leave call!");
	}
    });

    socket.on("joinChange", function(roomFrom,roomTo){
        socket.leave(roomFrom);
	socket.join(roomTo);
    });

    socket.on("message",(data, fn)=>{
	io.to(data.room).emit("message",
		{msg: data.msg,room:data.room,writerId:data.writerId,memCount:data.memCount});
    });
    socket.on('disconnect',()=>{
        util.log('user disconnected', socket.id);
	let roomId = roomObject[socket.id];
	io.to(roomId).emit("leaveCount",{});
	delete roomObject[socket.id];
	console.log(roomObject);
    });
});

server.listen(3000, function(){
    console.log("서버 가동");
});

