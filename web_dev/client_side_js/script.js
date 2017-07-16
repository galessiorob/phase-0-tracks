console.log("ojai there!");

var header = document.getElementById("header");
var content = document.getElementById("content");

function over(event) {
  event.target.innerHTML = "Let's get Pizza!";
  event.target.style.backgroundColor = "indianred";
event.target.style.color = "white";
};

// function out(event) {
//   event.target.innerHTML = "Mean Cats rule the world and take over the header!";
//   event.target.style.backgroundColor = "indianred";
//   event.target.style.color = "white";
// };

function clicky(event) {
    event.target.innerHTML = "Dale a tu cuerpo alegria Macarena, Que tu cuerpo es pa darle alegria y cosa buena, Dale a tu cuerpo alegria, Macarena, Hey Macarena!";
  event.target.style.backgroundColor = "indianred";
  event.target.style.color = "white";
};



header.addEventListener("mouseover", over);
// content.addEventListener("mouseout", out);
content.addEventListener("click", clicky);