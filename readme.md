# Env
- dba:8000
- api:8011
- web-admin:8010

- srv:8001
- task: Celery, task_mgr:5555

- db:3306 MySQL, db_mgr:8080
- cache:6379 Redis
- mq:5672 RabbitMQ, mq_mgr:15672


# Tech stack:
- gitee.com, github.com, GitBash/SourceTree
- Aliyun, Ubuntu, Nginx
- Docker, Compose, Swarm

- Django: dba(PyCharm, Python, MySQL), srv(Celery, Redis, RabbitMQ)
- SpringBoot: api(IDEA, Java, MyBatis, Redis, RabbitMQ, JUnit, Postman, Maven)
- Node: admin(VisualCode, JavaScript, Fetch)


# CI:
- Jira, Fecru(Fisheye + Crucible)
- Jenkins, admin/superuser, 4958cff2610544ba8d3d072605761c67
- http://localhost:8080/


# Cloud: cli, AccessKey ID/Secret, https://help.aliyun.com/document_detail/90765.html
aliyun configure
aliyun configure list
aliyun configure --profile user1

aliyun auto-completion
aliyun auto-completion --uninstall

aliyun help
aliyun help ecs
aliyun help ecs CreateInstance

aliyun ecs DescribleRegions
aliyun cs GET /clusters


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
