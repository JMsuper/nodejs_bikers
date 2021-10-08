"use strict"

const Feed = require("./src/models/feed/Feed");
const db = require("./src/config/db");

async function main(){
    const data = await Feed.getFeedAll();
    console.log(data);
    joinFeedAndImage()
    .then((list)=>{
        const returnVal = groupBy(list,"id");
        const value = addListToJson(returnVal, data);
        console.log(value);
    })
}

function joinFeedAndImage() {
    return new Promise((resolve, reject) => {
        const query = `select feed.id, feed_image.image_url, feed_image.sequence 
                        from feed join feed_image 
                        on feed.id = feed_image.feed_id
                        order by id,sequence;`;
        db.query(query, (err, data) => {
            if (err) reject(err);
            else resolve(data);
        })
    });
}

const groupBy = function (data, key) {
    return data.reduce(function (accumulator, currentValue) {
        var group = currentValue[key];

        if (accumulator[group] === undefined) {
            accumulator[group] = []
        }

        accumulator[group].push(currentValue.image_url)
        return accumulator
    }, {})
}

function addListToJson(imageUrlJson, list){
    for(let i = 0; i < list.length; i++){
        if(list[i].has_image != 1) continue;
        for(var key in imageUrlJson){
            if(key == list[i].id){
                list[i]["imageUrlList"] = imageUrlJson[key];
                delete imageUrlJson.key;
            }
        }
    }
    return list;
}


main();
