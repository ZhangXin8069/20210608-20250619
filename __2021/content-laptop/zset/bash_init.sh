#proot-distro install ubuntu
path=$(cd "$(dirname $0)";pwd)
p_path=$(cd $path ;cd ../;pwd)
cd ${p_path}
cd zbash
echo $(pwd)
echo "# >>> zhangxin alias:$(date "+%Y-%m-%d-%H-%M-%S") >>>" > zbash.sh
for i in $(ls)
do
	echo "alias ${i}='bash $(pwd)/${i}'" >> zbash.sh 
done
echo "# <<< zhangxin alias:$(date "+%Y-%m-%d-%H-%M-%S") <<<" >> zbash.sh
cat zbash.sh
echo "remember to source this"
