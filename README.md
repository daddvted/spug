# Dev

## Backend
```
python3 -m venv venv
source venv/bin/activate
pip install -U pip setuptools
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/


python manage.py updatedb
python manage.py user add -u admin -p spug.cc -s -n 管理员

# -u 用户名
# -p 密码
# -s 超级管理员
# -n 用户昵称

python manage.py runserver

```

## Frontend
```
cd /data/spug/spug_web
npm install --registry=https://registry.npm.taobao.org

npm start 
```

# 执行异常
```
source venv/bin/activate
python manage.py runmonitor
python manage.py runscheduler
python manage.py runworker
```
