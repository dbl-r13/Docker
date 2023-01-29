#!/bin/bash

echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chuck Norris Random Joke Docker Project</title>
</head>
<body>
    <h1>Chuck Norris Joke:</h1>
    <p><span id="joke"></span></p>
    <button id="jokeBtn">Get Joke</button>
    <script>
        let url = "https://api.chucknorris.io/jokes/random"
        let jokeBtn = document.getElementById("jokeBtn")
        let textSpace = document.getElementById("joke")
        fetch(url).then(res => res.json()).then(el => {
            console.log(el.value)
            textSpace.innerHTML = el.value});
            
        jokeBtn.addEventListener("click",() =>{  
        fetch(url).then(res => res.json()).then(el => {
            console.log(el.value)
            textSpace.innerHTML = el.value

        })
     } )
    </script>

</body>
</html>' > index.html


