# LibABC 

## 简介

LibABC 是一个示例模板函数库，里面包含了几个函数和变量作为示例

## API Referrence

### LibABC

头文件：`dev/seekit/libABC/libABC.h`

#### `add(int a, int b)`

将两个数字相加，返回结果和溢出标志

- 参数：int a：加数
	   int b：加数
- 返回值：int\[2\]: \[result, flag\]

```
[result, flag] = add(int, int)
```

#### `example_function()`

使 MCU 跳过一个时钟周期

- 参数：无
- 返回值：无

```
example_function()
```

### Example OOP

头文件：`dev/seekit/libABC/example_oop.h`

#### Example_t

|字段|类型|描述|
|:---:|:---:|:---:|
|id|uint8_t|示例的 id|
|info|const char\*|示例的描述信息|

##### example_init(Example_t* ex, const char* info)

- 初始化一个 Example_t 的实例，自动生成 id
- |参数|描述|
  |:---:|:---:|
  |ex|example 实例|
  |info|示例的描述信息|
- |返回值|描述|
  |:---:|:---:|
  |int|类的实例的数量|
  
##### example_get_id(const Example_t* ex)

- 获取 Example_t 的 id
- |参数|描述|
  |:---:|:---:|
  |ex|example 实例|
- |返回值|描述|
  |:---:|:---:|
  |uint8_t|Example_t 实例的 id|  
  
##### example_get_info(const Example_t* ex)

- 获取 Example_t 的描述
- |参数|描述|
  |:---:|:---:|
  |ex|example 实例|
- |返回值|描述|
  |:---:|:---:|
  |const char\*|Example_t 实例的描述|
  
##### example_get_info(const Example_t* ex)

- 通过用户定义的 stdout 如串口输出表达 Example_t 的字符串
  格式为：`id: info`
- |参数|描述|
  |:---:|:---:|
  |ex|example 实例|
    