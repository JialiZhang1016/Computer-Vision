# Matlab2018a 配置 vlfeat-0.9.20

## 工具
- **Matlab2018a** 
链接：https://pan.baidu.com/s/1aJLAWA4Gp3WeB0eVEf177w 
提取码：2333
- **MinGW64**
链接：https://pan.baidu.com/s/1wwv7HU6YFvcau7jG-1F8mA 
提取码：2333
- **vlfeat0.9.20**
链接：https://pan.baidu.com/s/1mawj7Zi0Tk0cuoYrRV5QdQ 
提取码：2333 

## 1. 安装Matlab2018a
我之前安装过Matlab2020a，首先卸载了Matlab2020a，然后再按照压缩包里面的word教程按照2018a，过程很顺利。

## 2. 安装MinGW64
根据Matlab官网的信息，选择下载MinGW GCC 5.3版本（上面的链接是离线安装包，解压安装就行）
```
This Add-On installs one of the following versions of MinGW GCC based on your version of MATLAB:

MATLAB R2015b, R2016a, R2016b, R2017a: MinGW GCC 4.9.2 from TDM
MATLAB R2017b and R2018a: MinGW GCC 5.3 from mingw-w64.org
MATLAB R2018b and beyond: MinGW GCC 6.3 from mingw-w64.org

Learn more about this compiler and related tools at:
http://tdm-gcc.tdragon.net
http://mingw-w64.org
```

## 3. 配置MinGW64
配置系统环境变量：电脑——属性——高级设置——系统变量添加
在Matlab里面验证，出现如下信息即为配置成功：
```
MEX 配置为使用 'MinGW64 Compiler (C)' 以进行 C 语言编译。
警告: MATLAB C 和 Fortran API 已更改，现可支持
	 包含 2^32-1 个以上元素的 MATLAB 变量。您需要
	 更新代码以利用新的 API。
	 您可以在以下网址找到更多的相关信息:
	 https://www.mathworks.com/help/matlab/matlab_external/upgrading-mex-files-to-use-64-bit-api.html。

要选择不同的语言，请从以下选项中选择一种命令:
 mex -setup C++ 
 mex -setup FORTRAN
```

## 4. 安装vlfeat
解压，安装vlfeat。按照官网的信息对vlfeat进行配置，出现以下问题：
```
MEX 文件 'D:\vlfeat-0.9.20\vlfeat-0.9.20\toolbox\mex\mexw64\vl_version.mexw64' 无效: 缺少依赖共享库:
'D:\vlfeat-0.9.20\vlfeat-0.9.20\toolbox\mex\mexw64\vl.dll->D:\vlfeat-0.9.20\vlfeat-0.9.20\toolbox\mex\mexw64\vl_version.mexw64'需要 'VCOMP100.DLL'。
```
问题的解决参考了这篇回答：
https://www.mathworks.com/matlabcentral/answers/410650-error-is-setting-up-vlfeat?s_tid=answers_rc1-1_p1_BOTH  
我在文件夹里面找到了`vcomp140.dll`，然后重命名为 `vcomp100.dll`，之后再进行检验：
```
>> run('D:\vlfeat-0.9.20\vlfeat-0.9.20\toolbox\vl_setup')
>> vl_version
0.9.20
```
说明安装成功，并且配置成功。
