# BTMediator
iOS 模块化开发调研

[casa 的方案](https://casatwy.com/iOS-Modulization.html)：Mediator模式 + target-action模式，target就是class，action就是selector，通过一些规则简化使用 runtime 动态调用。Category 用于解放 Mediator，每个组件写一个 Mediator 的 Category，让 Mediator 不至于太长。

总结起来就是，组件通过中间件通信，中间件通过 runtime 接口解耦，通过 target-action 简化写法，通过 category 感官上分离组件接口代码。

架构图如下：

![](https://github.com/BrooksWon/BTMediator/blob/master/architecture.png)
