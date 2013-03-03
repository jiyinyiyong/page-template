
log = -> console.log arguments...
q = (query) -> document.querySelector query
Node.prototype.q = (query) -> @querySelector query