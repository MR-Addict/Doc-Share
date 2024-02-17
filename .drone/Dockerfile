FROM ubuntu AS builder
WORKDIR /app
COPY . .
COPY assets/bin/* /usr/local/bin/
RUN chmod u+x /usr/local/bin/mdbook*
RUN mdbook build

FROM nginx:stable-alpine-slim
EXPOSE 80
COPY --from=builder /app/book /usr/share/nginx/html