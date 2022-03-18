const http = require("http");

const host = '0.0.0.0';
const port = 8000;

const requestListener = function (req, res) {

  

    // set header content type to json    
    res.setHeader("Content-Type", "application/json");
    // check if it's a GET request 
    if (req.method == 'GET') {
    // switch based on url    
        switch(req.url) {
            case '/tree':
                // 200 OK response
                res.writeHead(200);
                res.write(`{"myFavouriteTree":oak}`);
                console.log('200 OK');
                break;
            default:
                // 400 Not Found 
                res.writeHead(404);
                console.log('404 - Unknown URL - ', req.url);
                //throw new Error('404 - Unknown URL')
                break;
        }
    res.end();    
    }
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
    
});



