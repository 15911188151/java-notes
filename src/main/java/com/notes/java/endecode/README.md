# 加密解密

## MD5(Message Digest Algorithm)加密算法
````是一种单向加密算法，只能加密不能解密````
## BASE64进行加密/解密
```通常用作对二进制数据进行加密```
## DES(Data Encryption Standard)对称加密/解密
````数据加密标准算法,和BASE64最明显的区别就是有一个工作密钥，该密钥既用于加密、也用于解密，并且要求密钥是一个长度至少大于8位的字符串````
## RSA非对称加密/解密 
```非对称加密算法的典型代表，既能加密、又能解密。和对称加密算法比如DES的明显区别在于用于加密、解密的密钥是不同的。使用RSA算法，只要密钥足够长(一般要求1024bit)，加密的信息是不能被破解的。```
## SHA(Secure Hash Algorithm，安全散列算法)
```数字签名等密码学应用中重要的工具，被广泛地应用于电子商务等信息安全领域```
## HMAC(Hash Message Authentication Code，散列消息鉴别码)
```散列消息鉴别码，基于密钥的Hash算法的认证协议。消息鉴别码实现鉴别的原理是，用公开函数和密钥产生一个固定长度的值作为认证标识，用这个标识鉴别消息的完整性。
使用一个密钥生成一个固定大小的小数据块，即MAC，并将其加入到消息中，然后传输。接收方利用与发送方共享的密钥进行鉴别认证```