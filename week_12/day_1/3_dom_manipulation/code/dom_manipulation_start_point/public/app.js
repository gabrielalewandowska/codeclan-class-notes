var hideQuoteOfTheDay = function(){
  var qotd = document.getElementById("quote-of-the-day");
  qotd.classList.add("hidden");
}

var recolourArticles = function(){
  var articles = document.querySelectorAll("article");
  for (var article of articles){
    article.classList.add("dodger-blue-background");
  }
}

// var makeQuoteArticle = function(){
//   var quoteArticle = document.createElement("article");
//   quoteArticle.classList.add("quote");
// }
// var makeBlockQuote = function(text){
//   var blockQuote = document.createElement("blockquote");
//   blockQuote.textContent = text;
// }
//
// var makeCite = function(author){
//   var cite = document.createElement("cite");
//   cite.textContent = author;
// }

var makeNewQuote = function(text, author){

  var quoteArticle = document.createElement("article");
  quoteArticle.classList.add("quote");
  var blockQuote = document.createElement("blockquote");
  blockQuote.textContent = "Should've been a jaguar. ";
  var cite = document.createElement("cite");
  cite.textContent = "Harrison";

  var quotes = document.querySelector("section#quotes");
  quotes.appendChild(quoteArticle);

  quoteArticle.appendChild(blockQuote);

  blockQuote.appendChild(cite);
}


var app = function() {
  var quotes = document.querySelectorAll("article.quote");

  // quotes[1].className = "red-quote";
  quotes[2].className += " red-quote";
  quotes[3].classList.add("red-quote");
  // quotes[1].style.backgroundColor = "tomato";
  console.log(quotes[1]);

  hideQuoteOfTheDay();
  recolourArticles();
  makeNewQuote();
};

window.addEventListener('DOMContentLoaded', app);
