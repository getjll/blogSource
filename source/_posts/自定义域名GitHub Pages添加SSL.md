---
title: 自定义域名 GitHub Pages 添加SSL
date: 2017-03-27 09:03:02
tags:
---
关于如何搭建GitHub Pages，请参考[GitHub Pages + hexo搭建博客](/2017/03/26/GitHub%20Pages-hexo搭建博客/)

### 写在前面
为什么要给自己网站添加小绿锁?

+ 提升逼格
+ 防止中间劫持

### 大概步骤

1. 注册cloudflare
2. 添加域名解析
3. 修改DNS服务器
4. 设置Page Rules

### 注册[cloudflare](https://www.cloudflare.com/a/sign-up)

> 没有cloudflare账户的同学先自己注册一个

### 添加你的域名，并解析

1. ![添加网站域名](/images/addSsl/addWebsite.png)

	将 getjll.com 修改为你需要解析的域名，点击 Scan DNS Records。

2. ![扫描DNS记录](/images/addSsl/scanDNS.png)

	这步是扫描你的DNS记录，等读秒结束点击下一步，你会看到下图

3. ![扫描DNS记录结果](/images/addSsl/DNSResult.png)
	我这里是没有，需要自行添加
4. ![添加DNS](/images/addSsl/addDNS.png)
	1. 添加A，指向自定义域名 getjll.com 到 151.101.100.133（可以ping自己的GitHub Pages 得到）
	2. 添加CNAME，重定向 www.getjll.com 到 getjll.com
5. ![选择免费证书](/images/addSsl/selectPlan.png)
6. ![提示修改DNS服务器](/images/addSsl/changeNameservers.png)
	+ aragorn.ns.cloudflare.com
	+ zita.ns.cloudflare.com

	cloudflare的DNS服务器，需要将域名DNS指定成这两个

### 修改DNS服务器
> 这里使用阿里云演示

 1. 进入阿里云的对应域名管理，点击DNS修改

	![DNS修改](/images/addSsl/changeDNSServer1.png)
 2. 输入在cloudflare得到的两个DNS服务器

	![DNS修改输入](/images/addSsl/changeDNSServer2.png)
 3. 返回cloudflare查看，设置正确结果
 	![设置正确](/images/addSsl/changeDNSSuccess.png)

### 设置Page Rules

1. ![](/images/addSsl/createPageRules.png)
2. ![](/images/addSsl/addPageRules1.png)
3. ![](/images/addSsl/addPageRules2.png)
