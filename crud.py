from growi import Growi

import os
import datetime

url=os.environ['GROWI_URL']
access_token = os.environ['GROWI_ACCESS_TOKEN']

g = Growi(url,access_token)

path = f'/archive/crud/{g.now_fmt}'

print(g.pages_get(path))
print(g.pages_create(path, '# 本日のメモ'))
print(g.pages_update(path, f'# {g.now_fmt} メモ'))
print(g.pages_rename(path, path+'test'))
print(g.pages_rename(path+'test', path))
print(g.pages_rename(path, '/archive'+path))
print(g.pages_create('/archive', '$lsx()'))
print(g.pages_update('/archive', '$lsx()'))