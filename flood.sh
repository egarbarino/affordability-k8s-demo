set -x
ab -n 5000 -c 100 http://$1:80/
