var aes128 = require('./aes128.js')
var key     = "7854156156611111"; // 16位密码
var toCrypt = "我喔https://www.instagram.com/";
var iv = "0000000000000000";

var encrypted = aes128.encrypt(key, toCrypt, iv);

console.log('----> AES256 '+ encrypted);

var plainTxt = aes128.decrypt(key, encrypted, iv);

console.log('----> Plaintext '+ plainTxt);

encrypted = "XYFv7aOVQmCrQtNt8uwEx/v1Of3dxPcwQnjKsXarhwMhS3HhMonlb/o9vvp0x+Xy"
plainTxt = aes128.decrypt(key, encrypted, iv);
console.log('--> txt = ' + plainTxt);



