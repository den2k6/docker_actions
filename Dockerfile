# ベースイメージ
FROM ubuntu:22.04

# パッケージを更新し、必要なツールをインストール
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    wget \
    curl \
    unzip \
    xvfb \
    libxi6 \
    libnss3 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxrandr2 \
    libatk1.0-0 \
    libcups2 \
    libdrm2 \
    libxss1 \
    libgbm1 \
    chromium-browser \
    chromium-chromedriver \
    dbus-x11 \
    libglib2.0-0 \
    fonts-liberation \
    libappindicator3-1 \
    libatk-bridge2.0-0 \
    fonts-liberation \
    libappindicator3-1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libcups2 \
    libdbus-1-3 \
    libgdk-pixbuf2.0-0 \
    libnspr4 \
    libnss3 \
    libx11-xcb1 \
    libxcomposite1 \
    libxrandr2 \
    xdg-utils

# 仮想環境を作成し、Selenium をインストール
RUN python3 -m venv /app/venv && \
    /app/venv/bin/pip install --upgrade pip && \
    /app/venv/bin/pip install selenium

# Pythonスクリプトをコンテナにコピー
COPY hello.py /app/hello.py

# Chrome のヘッドレスモードを有効にするための環境変数を設定
ENV DISPLAY=:99

# Xvfb をバックグラウンドで実行し、Python スクリプトを実行
CMD ["sh", "-c", "Xvfb :99 -screen 0 1920x1080x24 & /app/venv/bin/python /app/hello.py"]
