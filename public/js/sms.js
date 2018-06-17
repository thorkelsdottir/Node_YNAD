///require the require dependency
var request = require('request');
//define an empty object for smsData
var smsData = {};
//make a send sms function
smsData.sendSmsData = function(req, res) {
    try {
        //define variables for values from the inputs
        var sMobile = req.body.mobile
        var sMessage = req.body.message
        //define a variable for the api Token
        var apiToken = '$2y$10$H.KvGdTTPrMYwuThvdkSP.v3rAcGU5sCuBui1eHaCdLIZV2Cmi.Sm';
        // console.log(sMobile)
        //do an AJAX http post request to the webpage service
        request.post({url:'http://smses.io/api-send-sms', 
            form: { 
                apiToken: apiToken, 
                mobile: sMobile, 
                message: sMessage 
            }
        }); 
    } catch(err){
        return res.send('There was a problem with sending an sms');
    }
    //redirect after sending an sms
    res.redirect('/sms');
}
//send to server.js
module.exports = smsData;