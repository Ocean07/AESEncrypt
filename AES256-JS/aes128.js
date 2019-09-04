const CryptoJS = require('crypto-js');  //引用AES源码js
    
// const key = CryptoJS.enc.Utf8.parse("1234123412ABCDEF");  //十六位十六进制数作为密钥
// const iv = CryptoJS.enc.Utf8.parse('ABCDEF1234123412');   //十六位十六进制数作为密钥偏移量

// //解密方法
// function Decrypt(word) {
//     let encryptedHexStr = CryptoJS.enc.Hex.parse(word);
//     let srcs = CryptoJS.enc.Base64.stringify(encryptedHexStr);
//     let decrypt = CryptoJS.AES.decrypt(srcs, key, { iv: iv, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
//     let decryptedStr = decrypt.toString(CryptoJS.enc.Utf8);
//     return decryptedStr.toString();
// }

// //加密方法
// function Encrypt(word) {
//     let srcs = CryptoJS.enc.Utf8.parse(word);
//     let encrypted = CryptoJS.AES.encrypt(srcs, key, { iv: iv, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
//     return encrypted.ciphertext.toString().toUpperCase();
// }

// export default {
//     Decrypt ,
//     Encrypt
// }

var aes128 = {};

aes128.encrypt = function(key, toEncrypt, iv) {
	let key1 = CryptoJS.enc.Utf8.parse(key);
    let iv1 = CryptoJS.enc.Utf8.parse(iv)
    let encrypted = CryptoJS.AES.encrypt(toEncrypt, key1, { iv: iv1, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
    return encrypted.toString();
}

aes128.decrypt = function(key, toDecrypt, iv) {
    let key1 = CryptoJS.enc.Utf8.parse(key);
    let iv1 = CryptoJS.enc.Utf8.parse(iv);
    var bytes  = CryptoJS.AES.decrypt(toDecrypt, key1, { iv: iv1, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
    var originalText = bytes.toString(CryptoJS.enc.Utf8);
    return originalText;
}

module.exports = aes128;
