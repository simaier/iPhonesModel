# iPhonesModel

## 前言

Swift UIDevice分类 用于判断手机型号等硬件功能

我写成了面向协议编程的方式，项目中直接调用协议方法即可

这算是第一次将自己写的东西在pods实战吧,吃了点亏

对public属性不是了解,结果方法都是对模块内的,导致就算import引用了,也无法调用其方法,于是更新了好几次,打了好几次tag.也算是一直收获吧

## Adding iPhonesModel to your project (添加 iPhonesModel 到你的项目)

[CocoaPods](http://cocoapods.org) is the recommended way to add `iPhonesModel` to your project.

1. Add a pod entry for `iPhonesModel` to your Podfile </br>
```
pod 'iPhonesModel'
```
2. Install the pod(s) by running </br>
```
pod install
```
3. Include `iPhonesModel`once you need it with </br>
```
import iPhonesModel
```
4. Include iPhoneModelS once you need it with </br>
```
class ViewController: UIViewController,iPhoneModelS {

    override func viewDidLoad() {
        super.viewDidLoad()

        if iPhone() == .iPhone4
        {
            print("我是iPhone4")
        }else if iPhone() == .iPhoneX
        {
            print("我是iphonex")
        }else
        {
            print("我是iphone")
        }
    }

}
```

## Example
```
if iPhone() == .iPhone4
{
print("我是iPhone4")
}
```
