感觉安装一个vlfeat-0.9.20，历时三四天，把能踩的坑都踩了一遍，记录一下吧。

## 1. 下载vlfeat-0.9.20
* 首先在[vlfeat官网](https://www.vlfeat.org/download/)上下载vlfeat-0.9.20-bin.tar.gz  
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/1.1.png)  
* 然后解压vlfeat-0.9.20到本地路径 `D:\Polyspace\package\vlfeat-0.9.20-bin`    
此时的文件夹是这样的:  
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/1.2.png)  

## 2. 配置vlfeat到Matlab  
* 根据vlfeat官网的[guide](https://www.vlfeat.org/install-matlab.html)，打开Matlab，在命令行输入 `run(vlfeat的路径\toolbox\vl_setyp)`  
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/2.1.png)  
* 没有任何结果出现。接着运行vl_version verbose，测试是否安装成功  
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/2.2.png)  
这里显示找不到这个文件，但是如果手动去找`vl_version.mexw64`，是可以根据路径，在文件夹中找到这个文件的。    
查资料之后，我决定先运行一下vl_complie.m文件  

## 3. 尝试纠错
* 根据路径`D:\Polyspace\package\vlfeat-0.9.20-bin\vlfeat-0.9.20\toolbox\vl_complie.m` 运行这个文件，结果是报错的
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/3.png)
* 报错信息显示我没有支持的编译器，于是我准备按照报错信息给的[网址](http://www.mathworks.com/support/compilers)下载一个编译器

## 4. MinGW 的安装
* 由于我对于MinGW很陌生，所以这里我参考了这篇[知乎文章](https://zhuanlan.zhihu.com/p/76613134)来安装。
* 但是安装过程非常不友好，所幸我从这篇文章的评论中找到了一个离线安装的方法。
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/4.1.png)
* 离线安装包在[官网下载页面](https://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/)的底部可以找到  
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/4.2.png)
* 但是下载的时候网速非常慢，挂了梯子的情况下，一个小时只能下载1M左右，这个文件共40+M。  
于是我在这篇博客下找到了离线安装包的[百度网盘链接](https://blog.csdn.net/qq_27854685/article/details/80752078)
* 找到对应文件后直接解压安装，按照[这篇教程](https://www.jianshu.com/p/61a2d0df86b0)配置环境变量。
* 然后打开命令提示符，输入`gcc -v`，查看是否安装成功。（这一步的时候我使用`win+R`打开cmd，然后输入`gcc -v`，结果会出现闪退的情况。得打开**命令提示符**的界面，再输入`gcc -v`）

## 5. MinGW配置matlab
* 根据[这篇帖子](https://blog.csdn.net/liuyanfang003/article/details/105575129)进行配置  
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/5.png)  
* 配置完成后，返回第一步，进行vlfeat的安装。

## 6. MinGW版本不正确
* vlfeat的安装依然不成功，报错信息显示MinGW版本不正确。  
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/6.png)  
* 再次查阅官网，发现必须安装对应版本：  
  > MATLAB R2015b, R2016a, R2016b, R2017a: MinGW GCC 4.9.2 from TDM  
  > MATLAB R2017b and R2018a: MinGW GCC 5.3 from mingw-w64.org  
  > MATLAB R2018b and beyond: MinGW GCC 6.3 from mingw-w64.org  


## 7. 安装GCC 6.3版本的MinGW64
* 现在才发现我费了很大力气安装的MinGW的GCC是8.1.0的，和官方要求的不配适。但是找到合适的版本**GCC 6.3.0**很难，MinGW64官网给的几个链接要么是6.0版本，要么是6.4版本。  
* Matlab官网虽然给了一个GCC 6.3.0的download link，但是需要登陆Matlab个人账户才行。而且后来我发现不仅需要个人账户，还需要正版的Matlab安装密钥之类的东西（没错，我是破解版的）。  
* 所以没办法了，只在慢慢找安装包。终于我在[csdn](https://download.csdn.net/download/jiaojiaf/9857895)上找到了安装包。  
* 下载完成之后重复之前的步骤进行安装，配置环境变量，配置matlab，最后再去配置一遍vlfeat。可惜的是结果还是报错。 
![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/7.png)  


依旧是失败。没脾气了，准备换python，偶尔想起来再试试吧。
