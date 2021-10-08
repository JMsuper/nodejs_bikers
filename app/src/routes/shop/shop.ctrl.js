"use strict"

const Shop = require("../../models/shop/Shop");


const output = {
    getShopFeedAll: async(req, res)=>{
        const data = await Shop.getShopFeedAll();
        return res.send(data)
    },
    getShopLatestWithImage: async (req, res)=>{
        const goodsId = req.query.goods_id;
        const userId = req.query.user_id;
        const limit = req.query.limit;
        const data = await Shop.getShopLatest(goodsId,userId,limit);
        console.log(data);
        return res.send(data);
    }
}

const process = {
    post: async(req, res)=>{
        const shop = new Shop(req.body);
        const response = await shop.Post();
        const url = {
            method: "POST",
            path: "/feed/image",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    like: async(req,res)=>{
        const shop = new Shop(req.body);
        const response = await shop.like();
        const url = {
            method: "PUT",
            path: "/shop/liked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    unlike: async(req,res)=>{
        const shop = new Shop(req.body);
        const response = await shop.unlike();
        const url = {
            method: "PUT",
            path: "/shop/unliked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    }
}

module.exports = {output,process}