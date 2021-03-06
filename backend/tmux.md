# Tmux
## Requirements
- tmux > 3.0

## Commands
```bash=
tmux new -s ${session}
tmux ls
tmux lsc
tmux a -t ${session}
tmux kill-session -t ${session}
tmux kill-server
```

## Prefix
Prefix is ==++ctrl+++b== command.
Controll tmux, type prefix and any following key.

### Session
|  Key  |  Action  |
| ---- | ---- |
|  :  |  prompt  |
|  ?  |  show list of key bind  |
|  s  |  select session  |
|  d  |  detatche session  |
|  $  |  rename current session  |

### Window
|  Key  |  Action  |
| ---- | ---- |
|  c  |  create new window  |
|  w  |  show window list  |
|  n  |  move next window  |
|  p  |  move previous window  |

### Pane
|  Key  |  Action  |
| ---- | ---- |
|  %  |  split pane horizontally  |
|  "  |  split pane vertically  |
|  o  |  move next pane  |
|  ;  |  move previous pane  |
|  ++space++  |  change layout  |

## Config
put file ==~/.tmux.conf== or ==/etc/tmux.conf==

### Sample
<script src="https://gist-it.appspot.com/https://github.com/ymmmtym/ansible-mgmt/raw/master/roles/common/files/dotfiles/.tmux.conf"></script>

## Reference
[tmuxを必要最低限で入門して使う](https://qiita.com/nl0_blu/items/9d207a70ccc8467f7bab)
