
# sub-shell 内でcdしても、current dirは変化しない
# -> 環境変数やdirなど、最終的に変更したくない場合はsub-shell活用を
(cd ~/&& pwd) | cat - && pwd