from growi import Growi

import os
import sys
import re

url=os.environ['GROWI_URL']
access_token = os.environ['GROWI_ACCESS_TOKEN']

g = Growi(url,access_token)

file_path = sys.argv[1]
path = re.sub('.md$','','/'+file_path)

print(g.pages_get(path))