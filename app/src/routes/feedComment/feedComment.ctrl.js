"use strict"

const FeedComment = require("../../models/feedComment/FeedComment");

const output = {
    getFeedComment: async (req, res)=>{
        const feedId = req.query.feed_id;
        const userId = req.query.user_id;
        const data = await FeedComment.getFeedComment(feedId,userId);
        return res.send(data);
    },
    getFeedChildComment: async (req, res)=>{
        const feedCommentId = req.query.feed_comment_id;
        const userId = req.query.user_id
        const data = await FeedComment.getFeedChildComment(feedCommentId,userId);
        return res.send(data);
    },

}

const process = {
    comment: async (req, res)=>{
        const feedComment = new FeedComment(req.body);
        const response = await feedComment.postComment();
        const url = {
            method: "POST",
            path: "/feedComment",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    childComment: async (req, res)=>{
        const feedComment = new FeedComment(req.body);
        const response = await feedComment.postChildComment();
        const url = {
            method: "POST",
            path: "/feedComment/child",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    like: async(req,res)=>{
        const feedComment = new FeedComment(req.body);
        const response = await feedComment.like();
        const url = {
            method: "PUT",
            path: "/feedComment/liked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    unlike: async(req,res)=>{
        const feedComment = new FeedComment(req.body);
        const response = await feedComment.unlike();
        const url = {
            method: "PUT",
            path: "/feedComment/unliked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    childLike: async(req,res)=>{
        const feedComment = new FeedComment(req.body);
        const response = await feedComment.childLike();
        const url = {
            method: "PUT",
            path: "/feedComment/child/liked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    childUnlike: async(req,res)=>{
        const feedComment = new FeedComment(req.body);
        const response = await feedComment.childUnlike();
        const url = {
            method: "PUT",
            path: "/feedComment/child/unliked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    }
}

module.exports = {output,process};