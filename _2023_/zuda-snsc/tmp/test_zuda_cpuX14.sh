pushd /public/home/zhangxin/zuda/tmp
mpic++.openmpi /public/home/zhangxin/zuda/test/test_zuda_cpuX.cc -o test_zuda_cpuX14 && mpirun.openmpi -np 14 test_zuda_cpuX14
popd
