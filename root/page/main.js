var log, q;

log = function() {
  return console.log.apply(console, arguments);
};

q = function(query) {
  return document.querySelector(query);
};

Node.prototype.q = function(query) {
  return this.querySelector(query);
};
