##XCode自带Color Picker 取值偏差


```objc
// 46.0f/255.0f = 0.18039215686274509803
[_colorImageView setBackgroundColor:[UIColor colorWithWhite:46.0f/255.0f alpha:1]];
// 0.135 
[_colorSenseImageView setBackgroundColor:[UIColor colorWithWhite:0.135 alpha:1.000]];
```

1、Color picker 为Xcode取色器取的色值，46，46，46，1 没有偏差。  

![](./colorPicker.png)

2、[ColorSense](https://github.com/omz/ColorSense-for-Xcode) xcode的插件调用的也是系统取色器，取值是0.135。

```objc
// 0.135 
[_colorSenseImageView setBackgroundColor:[UIColor colorWithWhite:0.135 alpha:1.000]];
```

3、Image 设置的图片

4、UIColor RGBA 代码设置的颜色, 46.0f/255.0f = 0.18039215686274509803 取值和0.135有偏差

```objc
// 46.0f/255.0f = 0.18039215686274509803
[_colorImageView setBackgroundColor:[UIColor colorWithWhite:46.0f/255.0f alpha:1]];
```

具体模拟器上效果图(Retina屏的图有点大)
![](./screenshot.png)

最后在效果图上取色，1和2的RGB 为 35，35，35， 3和4的RGB 为 46，46，46  

为了取值准确还是手动代码设置吧。。。

在[stackoverflow](http://stackoverflow.com/questions/7488378/weird-colors-in-xcode-interface-builder)找到了解决方法。

取色器点击后取色后默认改为Device RGB

![](./device_color.png)

手动换成 Generic RGB, RGB 就变为  35，35，35 了

![](./gener_color.png)

还得手动改46, 太不方便了。

-以上-