"use strict"

const User = require("../../models/user/User");

const output = {
    getUserInfo: async (req, res)=>{
        const id =req.query.id;
        const data = await User.getUserInfo(id);
        return res.send(data);
    },
    existNickName: async (req, res)=>{
        const nickName = req.query.nickName;
        const data = await User.existNickName(nickName);
        return res.send(data);
    },
    getFollower: async (req, res)=>{
        const userId = req.query.user_id;
        const data = await User.getFollower(userId);
        return res.send(data);
    },
    getFollowee: async (req, res)=>{
        const userId = req.query.user_id;
        const data = await User.getFollowee(userId);
        return res.send(data);
    },
    getFollowCount: async (req, res)=>{
        const userId = req.query.user_id;
        const data = await User.getFollowCount(userId);
        return res.send(data);
    }
}

const process = {
    new: async (req, res)=>{
        const user = new User(req.body);
        const response = await user.register();

        const url = {
            method: "POST",
            path: "/user/new",
            status: response.err ? 409 : 201,
        };

        return res.status(url.status).json(response);
    },
    postFollower: async (req, res)=>{
        const user = new User(req.body);
        const response = await user.postFollower();

        const url = {
            method: "POST",
            path: "/user/follower",
            status: response.err ? 409 : 201,
        };

        return res.status(url.status).json(response);
    },
    deleteFollower: async (req, res)=>{
        const user = new User(req.body);
        const response = await user.deleteFollower();

        const url = {
            method: "DELETE",
            path: "/user/follower",
            status: response.err ? 409 : 201,
        };

        return res.status(url.status).json(response);
    }
}

module.exports = {output,process};