from growi import Growi

import os
import sys
import re

url=os.environ['GROWI_URL']
access_token = os.environ['GROWI_ACCESS_TOKEN']

g = Growi(url,access_token)

file_path = sys.argv[1]
path = re.sub('.md$','','/'+file_path)
with open(file_path.strip()) as f:
    body = f.read()

g.pages_create(path,body)
g.pages_update(path,body)
print(g.pages_get(path))