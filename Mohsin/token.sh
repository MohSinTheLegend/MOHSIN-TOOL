const crypto = require('crypto');

module.exports = {
  sortObj: function(obj) {
    let keys = Object.keys(obj).sort(),
      sortedObj = {};
    for (let i in keys) {
      sortedObj[keys[i]] = obj[keys[i]];
    }
    return sortedObj;
  },

  randBetween: function(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
  },

  md5: function(str) {
    return crypto
      .createHash('md5')
      .update(str)
      .digest('hex');
  },

  randString: function(limit) {
    limit = limit || 10;
    let text = 'abcdefghijklmnopqrstuvwxyz';
    text = text.charAt(Math.floor(Math.random() * text.length));
    const possible = 'abcdefghijklmnopqrstuvwxyz0123456789';
    for (let i = 0; i < limit - 1; i++)
      text += possible.charAt(Math.floor(Math.random() * possible.length));
    return text;
  }
};


{
  "name": "facebook-access-token",
  "version": "1.0.0",
  "description": "Generating a full permission (Android) Facebook Access Token",
  "main": "index.js",
  "scripts": {
    "start": "node index.js"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/locmai0808/Facebook-Access-Token.git"
  },
  "author": "Loc Mai",
  "license": "MIT",
  "dependencies": {
    "axios-proxy-fix": "^0.16.3",
    "express": "^4.16.4",
    "uuid": "^3.3.2"
  },
  "bugs": {
    "url": "https://github.com/locmai0808/Facebook-Access-Token/issues"
  },
  "homepage": "https://github.com/locmai0808/Facebook-Access-Token#readme"
}
