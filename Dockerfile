FROM nginxinc/nginx-unprivileged:1.25-alpine3.18-slim
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY dist/ /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
