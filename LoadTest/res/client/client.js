(function() {
    var a = document.getElementById("hiThere")


    var xhr = new XMLHttpRequest();
    xhr.open(
        'GET',
        'https://stackoverflow.com/questions/49913908/after-set-allow-arbitrary-loads-my-http-request-still-got-the-error-message-tran',
        true
    );
    xhr.onreadystatechange = function() {


        a.innerText = "code" + xhr.status + " c " + xhr.responseText;
    };

    xhr.send();
})()