"use strict"

const Feed = require("../../models/feed/Feed");

const output = {
    getFeedAll: async (req, res)=>{
        const data = await Feed.getFeedAll();
        return res.send(data);
    },
    getFeedLatestWithImage: async (req, res)=>{
        const feedId = req.query.feed_id;
        const userId = req.query.user_id;
        const limit = req.query.limit;
        const data = await Feed.getFeedLatest(feedId,userId,limit);
        return res.send(data);
    },
    getFollowerFeed: async (req, res)=>{
        const feedId = req.query.feed_id;
        const userId = req.query.user_id;
        const limit = req.query.limit;
        const data = await Feed.getFollowerFeed(feedId,userId,limit);
        return res.send(data);
    },
    getFeedCount: async (req, res)=>{
        const userId = req.query.user_id;
        const data = await Feed.getFeedCount(userId);
        return res.send(data);
    },

}

const process = {
    text: async (req, res)=>{
        const feed = new Feed(req.body);
        const response = await feed.textPost();
        const url = {
            method: "POST",
            path: "/feed/text",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    image: async (req, res)=>{
        const feed = new Feed(req.body);
        const response = await feed.imagePost();
        const url = {
            method: "POST",
            path: "/feed/image",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    like: async(req,res)=>{
        const feed = new Feed(req.body);
        const response = await feed.like();
        const url = {
            method: "PUT",
            path: "/tour/liked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    unlike: async(req,res)=>{
        const feed = new Feed(req.body);
        const response = await feed.unlike();
        const url = {
            method: "PUT",
            path: "/tour/unliked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    }
}

module.exports = {output,process};