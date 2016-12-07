# PPDelegate
* 支持传入一个数组实现多个代理的功能

#### 使用方式如下:
``` 
[[PPDelegate shareDelegate] addDelegates:@[p,s,self] forTarget:self.tableView];

```
> 注: 需要作为代理的对象也请实现好代理方法

