pushd /public/home/zhangxin/zuda/tmp
mpic++.openmpi /public/home/zhangxin/zuda/test/test_zuda_cpuX.cc -o test_zuda_cpuX10 && mpirun.openmpi -np 10 test_zuda_cpuX10
popd
