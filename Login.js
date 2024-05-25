//Ophelia Greyling u23586312
//24/05/2024
//JS files are not fully complete yet, need to be matched to html file element names


var request = new XMLHttpRequest();

function login() {
    //get element names from html files
    var loginName = document.getElementById("emailLog").value;
    var loginPass = document.getElementById("passLog").value;


    jsonObj = {
        type : "Login",
        username : loginName,
        password : loginPass
    }

    //insert url for api below
    request.open('POST', 'https://wheatley.cs.up.ac.za/u23586312/api.php')
    request.setRequestHeader('Content-Type', 'application/json')
    request.send(JSON.stringify(jsonObj))


    request.onload = () => {
        if (request.status >= 200 && request.status < 300) {
            var response = JSON.parse(request.responseText);
    
            //get name of heading to display message from html doc
            var head = document.getElementById("logHeading");
    
            if (response.status == "success") {
                //change to fit html element
                head.innerHTML = "<h3 id='logHeading'>You have sucessfully logged in, user " + response.message + "</h3>";
            } else {
                //change to fit html element
                head.innerHTML = "<h3 id='logHeading'>" + response.message + "</h3>";
            } 
        }
    }
}

function register() {
    //get element names from html files, change fuction of prem as nessesary
    var loginName = document.getElementById("emailLog").value;
    var loginPass = document.getElementById("passLog").value;
    var prem = document.getElementById("premCheck").checked;
    
    jsonObj = {
        type : "Register",
        username : loginName,
        password : loginPass,
        watchlist : null,
        premium : null
    }
    if (prem == true) {
        jsonObj["premium"] = prem;
    }

    //insert url for api below
    request.open('POST', 'https://wheatley.cs.up.ac.za/u23586312/api.php')
    request.setRequestHeader('Content-Type', 'application/json')
    request.send(JSON.stringify(jsonObj))

    request.onload = () => {
        if (request.status >= 200 && request.status < 300) {
            var response = JSON.parse(request.responseText);
    
            //get name of heading to display message from html doc
            var head = document.getElementById("logHeading");
    
            if (response.status == "success") {
                //change to fit html element
                head.innerHTML = "<h3 id='logHeading'>" + response.message + "</h3>";
            } else {
                //change to fit html element
                head.innerHTML = "<h3 id='logHeading'>" + response.message + "</h3>";
            } 
        }
    }
}