function Record(artist, title, genre, price) {
  this.artist = artist;
  this.title = title;
  this.genre = genre;
  this.price = price;
}

Record.prototype.prettyPrint = function() {
  return "Artist: " + this.artist + ", Title: " + this.title + ", Genre: " + this.genre + ", Price: " + this.price
}

module.exports = Record;
