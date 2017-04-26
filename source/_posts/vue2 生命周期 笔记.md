---
title: vue2 生命周期 笔记
date: 2017-04-26 10:45:59
tags: vue
---

## 生命周期图示

![](/images/vue/lifecycle.png)
>图片来自vue官网

## 生命周期钩子函数

### beforeCreate

>在实例初始化之后，数据观测(data observer) 和 event/watcher 事件配置之前被调用。

### created

> 实例已经创建完成之后被调用。在这一步，实例已完成以下的配置：数据观测(data observer)，属性和方法的运算， watch/event 事件回调。然而，挂载阶段还没开始，$el 属性目前不可见。

### beforeMount

> 在挂载开始之前被调用：相关的 render 函数首次被调用之前。

### mounted

> el 被新创建的 vm.$el 替换，并挂载到实例上去之后调用该钩子。如果 root 实例挂载了一个文档内元素，当 mounted 被调用时 vm.$el 也在文档内。

  + 可以进行依赖DOM的操作

### beforeUpdate

> 数据更新时调用，发生在虚拟 DOM 重新渲染和打补丁之前。

  + 可以在这个钩子中进一步地更改状态，不会触发附加的重渲染过程。

### updated

>由于数据更改导致的虚拟 DOM 重新渲染和打补丁，在这之后会调用该钩子。

  + 可以执行依赖于 DOM 的操作
  + 避免在此期间更改状态，可能会导致更新无限循环。

### activated

> keep-alive 组件激活时调用。

### deactivated

> keep-alive 组件停用时调用。

### beforeDestroy

> 实例销毁之前调用。在这一步，实例仍然完全可用。

  + 可以进行组件销毁前的确认操作

### destroyed

> Vue 实例销毁后调用。调用后，Vue 实例指示的所有东西都会解绑定，所有的事件监听器会被移除，所有的子实例也会被销毁。

  + 可以进行自定义事件移除等的清理善后工作
