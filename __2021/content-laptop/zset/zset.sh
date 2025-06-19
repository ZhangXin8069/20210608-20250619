path=$(cd "$(dirname $0)";pwd)
p_path=$(cd $path ;cd ../;pwd)
cd ${p_path}
cd zset
bash bash_init.sh
bash cp_bashrc.sh
