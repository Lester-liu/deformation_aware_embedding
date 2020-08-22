#/bin/bash

# TF1.4
/usr/local/cuda/bin/nvcc tf_approxmatch_g.cu -o tf_approxmatch_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
g++ -std=c++11 tf_approxmatch.cpp tf_approxmatch_g.cu.o -o tf_approxmatch_so.so -shared -fPIC -I /orion/u/mikacuy/venv/tensorflow/lib/python2.7/site-packages/tensorflow/include -I /usr/local/cuda/include -I /orion/u/mikacuy/venv/tensorflow/lib/python2.7/site-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda/lib64/ -L /orion/u/mikacuy/venv/tensorflow/lib/python2.7/site-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0
