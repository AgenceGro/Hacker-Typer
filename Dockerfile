FROM lipanski/docker-static-website:latest

COPY index.html .
COPY script.js .
COPY style.css .
COPY kernel.txt .

CMD ["/busybox", "httpd", "-f", "-v", "-p", "3000", "-c", "httpd.conf"]
