### 基于 SpringBoot+Mybatis+Redis+RabbitMQ 秒杀系统  

### 项目特点
- 系统极致优化
 浏览器缓存／Nginx缓存/ 页面缓存/ 对象缓存／RabbitMQ队列异步下单，减少网络流量，减轻数据库压力，全面提升系统并发处理能力
- 深入微服务技能
SpringBoot／ RabbitMQ ／Redis／ MySQL , 基于时下最火热的Java微服务框架
- 分布式系统方案
从单机到集群，易于横向扩展只需增加服务器即可应对更大的流量和并发
- 安全策略
图形验证码、限流防刷、接口地址隐藏 , 多种安全机制拒绝机器人刷票党
### 开发环境
- JDK
- mysql
- springboot
- redis
- rabbitmq
### 项目启动说明

1、启动前，请配置 application.properties 中相关redis、mysql、rabbitmq地址,并导入数据库,数据库在项目db文件夹中。 默认前端登录账号：12345678910 密码：123456

2、登录地址：[http://localhost:8080/login/to_login](http://localhost:8080/login/to_login)
   

3、商品秒杀列表地址：[http://localhost:8080/goods/to_list](http://localhost:8080/goods/to_list)


### 其它说明

1、优化如下：
- 使用分布式Seesion，让多台服务器可以响应。
- 使用redis做缓存提高访问速度和并发量，减少数据库压力。
- 使用页面静态化，缓存页面至浏览器，前后端分离降低服务器压力。。
- 使用不同层级、不同粒度的缓存Redis预减库存、消息队列异步下单逐级削减对数据库的访问
- 安全性优化：双重md5密码校验，秒杀接口地址的隐藏，接口限流防刷，数学公式验证码。

### 页面截图
登录页
![image.png](https://upload-images.jianshu.io/upload_images/4157022-84da88ddc3e7e9d1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

商品列表情页
![image.png](https://upload-images.jianshu.io/upload_images/4157022-7459c2d415b3cd2b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

商品详情页
![image.png](https://upload-images.jianshu.io/upload_images/4157022-bcef2928cf2ea8a9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

订单详情页
![image.png](https://upload-images.jianshu.io/upload_images/4157022-83769fdcdca0f912.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###  项目接口流程说明
#### 获取秒杀接口
![获取秒杀接口](https://upload-images.jianshu.io/upload_images/4157022-5ce08070b864bd01.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
#### 执行秒杀
![执行秒杀](https://upload-images.jianshu.io/upload_images/4157022-61ddde33132da56d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
#### 登录注册流程
![登录，双重md5加密](https://upload-images.jianshu.io/upload_images/4157022-64d856cce86c7157.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
#### 接口限流流程
![接口限流流程](https://upload-images.jianshu.io/upload_images/4157022-c0c3cf57e4b3fd19.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 前端流程
- 点击商品详情，访问商品详情接口。该接口返回商品是否开启秒杀，没有开启则返回秒杀时间。
- 当商品开启秒杀时，填入验证码信息，点击秒杀按钮，先去访问获取秒杀路径，获取path路径，然后根据path路径访问执行秒杀接口非阻塞的返回结果，再去异步轮训访问秒杀结果接口，根据秒杀结果接口去判断秒杀成功或者失败。

###  github/博客地址

[博客地址](https://www.jianshu.com/p/fb22ec958745)

[github](https://github.com/ayhyh/miaosha.git)



