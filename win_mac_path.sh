#!/bin/bash
# クリップボードに格納されたパスをwinからmacへ置換して再びクリップボードへ格納するスクリプト
pbpaste | sed -E 's/\\+/smb:\/\//' | sed -E 's/\\/\//g' | tr -d '\n' | pbcopy
