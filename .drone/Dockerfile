FROM ubuntu AS builder
WORKDIR /app
COPY . .
COPY assets/bin/* /usr/local/bin/
RUN chmod u+x /usr/local/bin/mdbook*
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/MR-Addict/mdbook-repl.git -b gh-pages --depth 1
RUN echo 'src = "/embed/"' >> book.toml && mdbook build && mv mdbook-repl/embed book

FROM nginx:stable-alpine-slim
EXPOSE 80
COPY --from=builder /app/book /usr/share/nginx/html