FROM ubuntu AS builder
COPY mdbook/mdbook /usr/local/bin
COPY mdbook/mdbook-admonish /usr/local/bin
WORKDIR /usr/src/app
COPY . .
RUN chmod u+x /usr/local/bin/mdbook*
RUN mdbook build -d public

FROM nginx:stable-alpine
COPY --from=builder /usr/src/app/public /usr/share/nginx/html
