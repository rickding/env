# Env
- dba:8000
- api:8011
- admin:8010

- srv:8001
- task: Celery, task_mgr:5555 flower

- db:3306 MySQL, db_mgr:8080
- cache:6379 Redis
- mq:61616 ActiveMQ, mq_mgr:8161


# Tech stack:
- github.com, code.aliyun.com, gitee.com
- Aliyun, Ubuntu, Nginx
- Docker, Compose, Swarm

- Django: dba(PyCharm, Python, MySQL), srv(Celery, Redis, ActiveMQ)
- SpringBoot: api(IDEA, Java, MyBatis Plus, Redis, ActiveMQ, JUnit, Postman, Swagger)
- Node: admin(VSCode, JavaScript)


# https
server {
    listen 443;
    server_name localhost;
    ssl on;
    root html;
    index index.html index.htm;
    ssl_certificate   cert/1528850187229.pem;
    ssl_certificate_key  cert/1528850187229.key;
    ssl_session_timeout 5m;
    ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;
    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_prefer_server_ciphers on;
    location / {
        root html;
        index index.html index.htm;
    }
}
