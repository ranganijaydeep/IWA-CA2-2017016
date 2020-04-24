const express = require ('express');
const router = express.Router();
const Post = require ('../models/Post');

//this get all the posts method
router.get('/', async(req, res) => {
try{
    const posts = await Post.find();
    res.json(posts);    
}catch(err){
        res.json({message:err});
    }
});

//submit post method 
router.post('/', async (req, res) => {
    const post = new Post({
        title: req.body.title,
        description: req.body.description
    });
try{
    const savedPost = await post.save();
    res.json(savedPost);
}catch(err){
    res.json({ message: err });
}
});

// specific post method  by id 
router.get('/:postId', async (req,res) =>{
    try{
        const post=await Post.findById(req.params.postId);
        res.jason(post);

    }catch (err){
        res.jason({message :err});
    }

})


module.exports = router;