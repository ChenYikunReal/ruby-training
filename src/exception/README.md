# Ruby方法/函数

1.alias语句可为函数或变量重命名：
- > alias 方法名 方法名
- > alias 全局变量 全局变量

2.undef语句用于取消方法定义，undef不能出现在方法主体内。

3.通过使用undef和alias，类的接口可以从父类独立修改，只是在自身内部方法调用时程序可能会被破坏。
