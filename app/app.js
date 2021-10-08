"use strict";

// 모듈
const express = require("express");
const app = express();
const socketIO = require("socket.io");
const http = require("http");
const server = http.createServer(app);
const io = socketIO(server);

// 라우팅
const feed = require("./src/routes/feed");
const feedComment = require("./src/routes/feedComment")
const user = require("./src/routes/user");
const shop = require("./src/routes/shop");
const tour = require("./src/routes/tour");


// 앱 세팅
app.use(express.static(`${__dirname}/src/public`));
app.use(express.json());
app.use(express.urlencoded({extended:true}));

app.use("/feed",feed);
app.use("/feedComment",feedComment);
app.use("/user",user);
app.use("/shop",shop);
app.use("/tour",tour);

io.on('Connection',(socket)=>{
    console.log('a user conneted');
    socket.on('chat messagge',(msg)=>{
        io.emit('chat message',msg);
    });
    socket.on('disconnect',()=>{
        console.log('user disconnected');
    })
})

server.listen(3003, function(){
    console.log("서버 가동");
});

