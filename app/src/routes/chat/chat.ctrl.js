"use strict"

const Chat = require("../../models/chat/Chat");

const output = {
	getChatRoomAll: async(req, res)=>{
	    const userId = req.query.user_id;
	    const data = await Chat.getChatRoomAll(userId);
	    return res.send(data);
	},
	getChatMessage: async(req, res)=>{
	    const roomId = req.query.room_id;
	    const userId = req.query.user_id;
	    const data = await Chat.getChatMessage(roomId,userId);
	    return res.send(data);
	},
	getChatInShop: async(req, res)=>{
	    const goodsId = req.query.goods_id;
	    const userId = req.query.user_id;
	    const data = await Chat.getChatInShop(goodsId,userId);
	    return res.send(data);
	}

}

const process = {
	postMessage: async(req, res)=>{
	    const chat = new Chat(req.body);
	    const response = await chat.postMessage();
	    const url = {
		                method: "POST",
		                path: "/chat/room/message",
		                status: response.err ? 409 : 201,
		            };
		        return res.status(url.status).json(response);
	},
	createChatRoom: async(req, res)=>{
	    const chat = new Chat(req.body);
	    const response = await chat.createChatRoom();
		console.log(response);
	    return res.send(response);
	}
}

module.exports = {output,process}
