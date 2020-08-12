# 使用Anaconda配置openCV-Python

## 工具
- Anaconda
- Pycharm

## 1. openCV与Python的版本选择
openCV从1.x到现在的4.x，更新速度很快，[openCV 各版本差异](https://cloud.tencent.com/developer/article/1368123)也很大。

其中对使用Python的用户来说，影响最大的应该是`SIFT`等工具的私有化，使得opencv-python3.4.2.17以后的版本不再免费（这些特征提取申请了专利保护）

综合考虑来看，作者决定使用**openCV3.4.1**版本

## 2. Anaconda里面创建python3.6虚拟环境
打开**Anaconda Prompt**，输入
```
conda create --name py3.6 python=3.6 # 创建名为 py3.6 的虚拟环境
conda activate py3.6 # 进入 py3.6 虚拟环境
```

## 3. 使用镜像安装openCV3.4.1.15版本
使用清华镜像在`py3.6`的虚拟环境中进行`opencv-python==3.4.1.15`,`opencv-contrib-python==3.4.1.15`的安装
```
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple opencv-python==3.4.1.15
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple opencv-contrib-python==3.4.1.15
```

## 4. 验证安装是否成功
### 设置虚拟环境
- 打开Pycharm，依次点击`file`,`settings`,`Project`,`Project Interpreter`
- 点击右边`Project Interpreter` 后面的设置，选择`add`
- 在`Existing evvironment`里面选择`~:\Anaconda\envs\py3.6\python.exe`
- 点击`OK`，完成设置。

![image](https://github.com/JialiZhang1016/Computer-Vision/blob/master/images/%E9%85%8D%E7%BD%AE%E7%8E%AF%E5%A2%83.png)

完成之后的Project Interpreter显示为`python3.6(py3.6)`，下面的Package里面也可以看到在这个虚拟环境下有`numpy`, `opencv-contrib-python`, `opencv-python`这些包。

### 在Pycharm中验证版本是否正确，安装是否成功
创建一个python脚本，输入
```python
importcv2
print(cv2.__version__)
```
结果显示版本为`3.4.1`即为安装正确。
```python
D:\Anaconda3\envs\py3.6\python.exe D:/Pycharm/CV/example.py
3.4.1

Process finished with exit code 0
```




