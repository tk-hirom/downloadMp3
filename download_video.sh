#!/bin/bash

# 引数の数をチェック
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <URL> <DESTINATION>"
    exit 1
fi

URL="$1"
DEST="$2"

# ディレクトリの存在チェックと作成
if [ ! -d "$DEST" ]; then
    mkdir -p "$DEST"
fi

# youtube-dl でダウンロード
youtube-dl "$URL" -o "$DEST/%(title)s.%(ext)s"

