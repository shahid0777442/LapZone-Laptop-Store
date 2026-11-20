# Stage 1: minify
FROM node:20-alpine AS build
WORKDIR /src
COPY index.html .
RUN npm i -g html-minifier-terser && \
    html-minifier-terser --collapse-whitespace --minify-js --minify-css \
    -o index.min.html index.html

# Stage 2: Nginx + static files
FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /src/index.min.html /usr/share/nginx/html/index.html
EXPOSE 80
