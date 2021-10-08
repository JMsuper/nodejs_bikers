"use strict"

const Tour = require("../../models/tour/Tour");


const output = {
    getTourAll: async(req, res)=>{
        const data = await Tour.getTourAll();
        return res.send(data);
    },
    getTourLatest: async(req, res)=>{
        const tourId = req.query.tour_id;
        const userId = req.query.user_id;
        const limit = req.query.limit;
        console.log(userId + " 123123");
        const data = await Tour.getTourLatest(tourId,userId,limit);
        return res.send(data);            
    }
}

const process = {
    post: async(req, res)=>{
        const tour = new Tour(req.body);
        const response = await tour.Post();
        const url = {
            method: "POST",
            path: "/tour/",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    delete: async(req,res)=>{
        const tour = new Tour(req.body);
        const response = await tour.delete();
        const url = {
            method: "DELETE",
            path: "/tour/",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    like: async(req,res)=>{
        const tour = new Tour(req.body);
        const response = await tour.like();
        const url = {
            method: "PUT",
            path: "/tour/liked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    },
    unlike: async(req,res)=>{
        const tour = new Tour(req.body);
        const response = await tour.unlike();
        const url = {
            method: "PUT",
            path: "/tour/unliked",
            status: response.err ? 409 : 201,
        };
        return res.status(url.status).json(response);
    }
}

module.exports = {output,process}