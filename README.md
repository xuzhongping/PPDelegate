# IFMTest

[![CI Status](http://img.shields.io/travis/1021057927@qq.com/IFMTest.svg?style=flat)](https://travis-ci.org/1021057927@qq.com/IFMTest)
[![Version](https://img.shields.io/cocoapods/v/IFMTest.svg?style=flat)](http://cocoapods.org/pods/PPDelegate)
[![Pod License](http://img.shields.io/cocoapods/l/PPDelegate.svg?style=flat)](https://opensource.org/licenses/MIT)



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


## 支持CocoaPods

IFMTest is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Delagate"
```

## Author

1021057927@qq.com, 1021057927@qq.com

## License

IFMTest is available under the MIT license. See the LICENSE file for more info.
