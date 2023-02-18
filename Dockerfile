FROM ubuntu AS builder
COPY assets/mdbook /usr/local/bin
WORKDIR /app
COPY . .
RUN chmod u+x /usr/local/bin/mdbook
RUN mdbook build -d public

FROM nginx:stable-alpine
COPY --from=builder /app/public /usr/share/nginx/html
