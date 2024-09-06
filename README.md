# docker_actions

## github actions で docker container 上で selenium を動かす試み

このプロジェクトは、github actions を使用して docker コンテナ内で selenium を実行することを目指しています。以下は、プロジェクトの実行手順です。

### 実行手順

1. `docker build -t docker-actions .` コマンドを実行して、Docker イメージをビルドします。
2. `docker run docker-actions` コマンドを実行して、ビルドした Docker イメージからコンテナを起動します。

### 注意事項

* このプロジェクトでは、`ubuntu:22.04` をベースイメージとして使用しています。
* `Dockerfile` では、selenium 依存関係のインストールに加えて、Chrome ブラウザと ChromeDriver もインストールしています。
* `hello.py` では、selenium を使用してヘッドレスモードで Chrome ブラウザを操作し、特定の URL から h1 タグのテキストを取得しています。
* `github/workflows/docker-actions.yml` では、github actions を使用して、コードの変更が main ブランチにプッシュされた際に自動的に Docker イメージをビルドし、コンテナを起動するワークフローを定義しています。


## 予定

* selenium コマンドのさらなる試行
* コードのリファクタリング