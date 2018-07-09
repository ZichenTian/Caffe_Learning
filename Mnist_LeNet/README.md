# Caffe学习（一）：使用LeNet训练MNIST数据

系统为Ubuntu 18.04，Caffe用的是编译好的，使用apt安装

代码参考caffe/examples/mnist下的代码

各文件说明如下：
* get_mnist.sh：从网络上获取MNIST数据集压缩包并解压
* create_mnist.sh：调用caffe中自带的convert_mnist_data.bin，将数据集转换为lmdb格式
* lenet_train_test.prototxt：网络结构定义于此
* lenet_solver.prototxt：训练与测试参数定义于此
* train_lenet.sh：启动训练
* test_lenet.sh：启动测试
