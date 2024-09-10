# FaceFusion 安装指南

## 1. 克隆项目并准备环境

```bash
git clone https://github.com/vagmr/facefusion.git
apt install unzip
unzip fc.zip
```

## 2. 设置代理（如需要）

```bash
export http_proxy=socks5:/172.17.0.1:10808 && export https_proxy=socks5:/172.17.0.1:10808 
chmod +x dl.sh
```

## 3. 取消代理设置

```bash
unset http_proxy  
unset https_proxy
```

## 4. 安装 Miniconda

```bash
curl -LO https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```

## 5. 运行安装脚本

```bash
python install.py
```

## 6. 更新 APT 源

编辑 APT 源列表：

```bash
sudo vim /etc/apt/sources.list
```

替换为以下内容：

```
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
```

更新 APT 缓存：

```bash
sudo apt-get update
```

## 7. 安装 FFmpeg

```bash
apt install ffmpeg
```

## 8. 安装 CUDA 相关包

```bash
conda install conda-forge::cuda-runtime=12.4.1 conda-forge::cudnn=9.2.1.18 conda-forge::gputil=1.4.0
```

## 9. 下载并配置 frpc

```bash
# 下载文件
wget https://cdn-media.huggingface.co/frpc-gradio-0.2/frpc_linux_amd64

# 重命名文件
mv frpc_linux_amd64 frpc_linux_amd64_v0.2

# 移动文件到指定目录
mv frpc_linux_amd64_v0.2 /root/miniconda3/lib/python3.12/site-packages/gradio/

# 进入目录
cd /root/miniconda3/lib/python3.12/site-packages/gradio/

# 添加执行权限
chmod +x frpc_linux_amd64_v0.2
```

## 10. 运行程序

```bash
python run.py
```

