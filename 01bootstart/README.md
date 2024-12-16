1. 安装bochs,中间过程曲折,主要参考 https://zhuanlan.zhihu.com/p/35437842
2. 进入安装目录,修改的文件艾伦有./bin/myos.disk
3. 根据教程初始化了MYOS.img
4. 之后参考书籍以及<a href="https://www.cnblogs.com/wangxx06/p/13759187.html#:~:text=%3C1%3E%20%E7%9C%8B%E4%B8%80%E7%9C%8Bmem_init%E5%81%9A%E4%BA%86%E4%BB%80%E4%B9%881.">操作系统启动过程</a> 和 <a href = "https://blog.csdn.net/deniece1/article/details/103043127">int 10h说明</a>编写年boot.asm,编译成boot.bin后将boot.bin写入MYOS.img中