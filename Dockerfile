# Dockerfile
FROM ubuntu:latest

# パッケージを更新し、Pythonをインストール
RUN apt-get update && apt-get install -y python3

# Pythonスクリプトをコンテナにコピー
COPY hello.py /app/hello.py

# コンテナ内でPythonスクリプトを実行
CMD ["python3", "/app/hello.py"]
