---
title: this指向
date: 2017-04-28 15:19:42
tags: JavaScript
---
## 作为函数调用

#### 例子一
```JavaScript
function test() {
  this.test = 1
  console.log(this, this.test)
}

test() // global对象，1
```
#### 例子二
```JavaScript
let testValue = 2;
let obj = {
  testValue: 1,
  testMethod: function () {
    console.log(this, this.testValue)
  }
};
obj.testMethod() // obj, 1

let testMethod = obj.testMethod
testMethod() // global对象,  2

```

> 函数直接调用this指向调用当前函数的对象。

## 构造函数调用

```JavaScript
function test() {
  this.test = 1
  console.log(this, this.test)
}

new test() // test {test: 1}, 1
```
> 作为构造函数调用，this指向新创建的对象

## bind、call／apply调用

```JavaScript
let type = 'global'
let bindObj = {
  type: 'bind'
};
let callObj = {
  type: 'call'
};
function test() {
  console.log(this.type)
}

let bindTest = test.bind(bindObj)
bindTest() // bind

bindTest.call(callObj) // bind

test.call(callObj) // call

test.call() // global

```

> bind、call/apply指向绑定的对象，如果缺少传入值默认指向全局对象
