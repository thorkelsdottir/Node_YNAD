var mysql = require('mysql')

//create a connection to mysql
var db = mysql.createConnection({
    host: "localhost", 
    user: "admin",
    password: "password",
    database: "dbynad",
    port: 8889
})

//connect to my dbynad database 
db.connect(err => {
    if(err){
        console.log('Error'); process.exit()
    }
    console.log('Connected');
})
// //read/select from database all users
// db.query( 'SELECT * FROM users', (err, ajData ) =>{
//     console.log(ajData);
// })

// //Insert a user into database
// var jUser = {
//     "firstname": 'Jon',
//     "lastname": 'Tryggvi',
//     "profession": 'Web Developer',
//     "description": 'My name is Jon and love the web',
//     "password": '123',
//     "profile_image": 'https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-1/c0.5.320.320/p320x320/18156901_10156189333629698_7999203246869048154_n.jpg?_nc_cat=0&oh=ea6744a58f846b3752644e176ea9c35a&oe=5B5F9343',
//     "facebook_url": null,
//     "twitter_url": 'https://www.linkedin.com/in/thorkelsdottir/',
//     "phone_number": '004593845257',
//     "instagram_url": 'https://www.instagram.com/katrinduasig/',
//     "roles_idroles": 1,
//     "location_idlocation": 2,
//     "thread_idthread": null
// }
// var stmt = 'INSERT INTO users SET ?'
// db.query(stmt, jUser, (err, jData)=>{
//     console.log("uData",jData);
//     if(jData.affectedRows == 1){
//         console.log('great, JSON user inserted');
//     }
// })
