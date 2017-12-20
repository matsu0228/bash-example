#!/bin/bash

# you shoud return 1 (none zero) when an error occure and exit

# 変数の存在確認(Zero)
# ----------------------------------------
if [ -z "$1" ]; then
  echo -e "you should set something"
  exit 1
fi
if [ ! -z "$1" ]; then
  echo "your option is $1"
fi

# ファイルの存在確認
# ----------------------------------------
if [ -e "./test" ]; then
  echo "パス　が存在するか"
fi
if [ -f "./test" ]; then
  echo "ファイル　が存在するか"
fi
if [ -d "./test" ]; then
  echo "ディレクトリ　が存在するか"
fi
if [ -L "./test" ]; then
  echo "リンク　が存在するか"
fi

# check whethre command is exist or not & install
#  quoate of "${IS_EXIST}" is important because if it isn't that command will execute
# ----------------------------------------------
IS_EXIST=$(type ls)
INSTALL=$(echo ls)
if [ ! "${IS_EXIST}" ]; then 
  ${INSTALL}; 
fi
