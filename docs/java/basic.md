# Java入门

## 基础

### 字节，位

一个字节有8个位。

如何表示负数？如何计算

补码是什么

| & ^。


### 包

约定以文件路径作为包名，一般约定src/xxxx，xxx的相对于src的路径就是包的位置，一般包指的是一个文件夹，也就是一类对象。

可以指定默认包比如`src/main/java/xxx`，xxx就是包的路径，`maven`约定包的位置在于`src/main/java`。

### 类

一个类就是一个文件`.java`的文件。


![](https://epiboly-1256208535.cos.ap-chengdu.myqcloud.com/WeChata54cbd55c84cf0e75d53c79479b4e5a2.png)

### 第三方包

### Static 静态属性

静态属性在自身内部使用，不需要加前缀，在引用其他类的静态属性需要`类.属性`去调用。

### Bootstrap
启动器
```java
public class Main {
  static void main() {

  }
}
```

## 调试

### Maven

构建工具，相当于webpack

- 生命周期管理
- 依赖解析
- 构建自动化

使用pom.xml进行依赖生命，类似于package.json。

**Maven定义了一系列生命周期**，很像webpack，插件在各个不同生命周期添加监听。除此之外还，还有提供给plugins的各种hooks阶段。

命令行：`mvn [xx生命周期]`

![Maven hooks](https://blog-1256208535.cos.ap-shanghai.myqcloud.com/clipboard_20200606022953.png)


## 数据类型

二进制基石。

一字节（byt）存贮8格二进制，也就是225个二进制。

Java世界中，一个`int`占据**4个字节**，short占据2个字节，char占据2个字节

### 原生数据类型与引用数据类型

引用数据类型 (对象)

原生数据类型： 

| 原生数据类型 | 存贮空间 |
| - | - |
| byte | 1个字节 |
| short | 2个字节 |
| int | 4个字节 |
| long | 8个字节 |
| float | 4个字节(但是指数只有8位) |
| double | 8个字节 |
| char | 2个字节 |
| boolean | true/false |
| void | - |

单引号：一个字符如： 'A'， '你', '1'

### 装箱操作

```
Integer i = 123
// 相当于
Integer i = new Integer(123)
```

### == 与 equals

== 比较原始类型的值或者对象类型的地址

equals 相当于对比2着对象里面的值。


### 数组

jdk里面特殊类型，jdk创建它，jdk专门使用虚拟机特殊指令创建它。

### 流程符 Switch

可以被Switch的类型：int long short byte char enum String。

### 重载

**重载匹配规则**：就近匹配比如`f(1)`匹配优先级又高到低：`f(int i), f(Integer i), f(Number i), f(Object i)`。也就是说谁距`int`最近谁就会被命中（明显的父子继承关系）。

**重载歧义**：比如`f(null)`。既能匹配`f(Number i)`也能匹配`f(ArrayList i)`，因为2者你比较不出来谁更接近参数类型（因为都是继承Object）。因此需要做一层强制类型转换。