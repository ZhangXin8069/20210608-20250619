# this
sshpass -f ~/.ssh/spassword ssh zhangxin@222.200.137.16 -p 10023 -L 127.0.0.1:8887:127.0.0.1:8888 "zju.sh"
# remote
# jupyter lab --no-browser &
# this
open http://127.0.0.1:8887/lab
