FROM rust:1.43

# /todo でビルドを行うことにします
WORKDIR /todo

# ビルドに必要なファイルをイメージにコピーします
COPY Cargo.toml Cargo.toml
COPY ./src ./src
COPY ./templates ./templates

RUN cargo build --release

RUN cargo install --path .

CMD ["todo"]
