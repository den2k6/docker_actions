# docker_actions

## github actions で docker container 上の selenium を動かす試み

このプロジェクトは、github actions を使用して docker コンテナ内で selenium を実行することを目指しています。以下は、プロジェクトの実行手順です。

### 実行手順

#### ローカルで直接実行

1. `python selenium_on_docker.py` コマンドを実行します。

#### ローカルの docker container で実行

1. `docker build -t docker-actions .` コマンドを実行して、Docker イメージをビルドします。
2. `docker run docker-actions` コマンドを実行して、ビルドした Docker イメージからコンテナを起動します。

#### リモートの Github Actions で実行

1. `git push` コマンドを実行して、コードの変更をリモートリポジトリにプッシュします。

### 注意事項

* このプロジェクトでは、`ubuntu:22.04` をベースイメージとして使用しています。
* `Dockerfile` では、selenium 依存関係のインストールに加えて、Chrome ブラウザと ChromeDriver もインストールしています。
* `selenium_on_docker.py` では、selenium を使用してヘッドレスモードで Chrome ブラウザを操作し、特定の URL から h1 タグのテキストを取得しています。
* `github/workflows/docker-actions.yml` では、github actions を使用して、コードの変更が main ブランチにプッシュされた際に自動的に Docker イメージをビルドし、コンテナを起動するワークフローを定義しています。

### 予定

* selenium コマンドのさらなる試行
* コードのリファクタリング
