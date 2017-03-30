# PPDelegate
* 支持传入一个数组实现多个代理的功能

#### 使用方式如下:
``` 
[[PPDelegate delegate] addDelegates:@[p,s,self] forTarget:self.tableView];

```

##### 很多人都问我这个工具有什么用？我想说的有两点：
1. 为了解决一些多对象对于一个代理方法的监听
2. 分离出代码逻辑，让各个对象内部实现自己对自己的处理，而不是公开接口让真正的代理对象来处理
3. 欢迎大家来提意见 QQ:1021057927
> 更新: 增加监听自定义代理属性
> 注: 需要作为代理的对象也请实现好代理方法

