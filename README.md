# Docker 실전 연습 예제
### Installation
<pre>
cd /home
git clone https://github.com/blossun/Docker-Practice
cd Docker-Practice
</pre>
### RUN
<pre>
# Login For Private Docker Repository
docker login
docker pull solari/docker-practice
docker run -p 80:80 -v /home/Docker-Practice/Project:/var/www/html solari/docker-practice
</pre>
