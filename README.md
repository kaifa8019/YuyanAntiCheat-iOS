# YuyanAntiCheat 接入文档

# 1.1 概述

- 支持 iOS 8.0 及以上版本
- 支持`cocoapods`导入

# 1.2 工程环境配置

1. 打开项目的 app target，查看 Build Settings 中的 Linking-Other Linker Flags 选项，确保含有 -ObjC 一值， 若没有则添加。

2. 在项目的 app target 中，查看 Build Settings 中的 Build options - Enable Bitcode 选项， 设置为NO。 

3. info.plist 添加支持 Http访问字段

```obj-c
<key>NSAppTransportSecurity</key>
<dict>
<key>NSAllowsArbitraryLoads</key>
<true/>
</dict>
```

# 1.3 采用cocoapods进行SDK的导入

```
pod 'YuyanAntiCheat'
```

# 2.1 初始化

```
#import <YuyanAntiCheat/YuyanAntiCheat.h>

[[YuyanAntiCheatConfigurer shareConfigurer] prepare:@"appID" callback:^(NSError * _Nullable error) {
    
}];
```

# 2.2 查看版本号

```
[YuyanAntiCheatConfigurer version];
```

# 2.3 自定义埋点

```
[[YuyanAntiCheatConfigurer shareConfigurer] event:@"测试" stringValue:@"str" intValue:1];

[[YuyanAntiCheatConfigurer shareConfigurer] event:@"测试" stringValue:@"str"];
```