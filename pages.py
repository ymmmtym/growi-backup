from growi import Growi

import os
import re
import json
import webbrowser
import urllib.parse
import argparse


url=os.environ['GROWI_URL']
access_token = os.environ['GROWI_ACCESS_TOKEN']

g = Growi(url,access_token)

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('file_path', help='Local file path of your markdown document')
parser.add_argument('-b', '--browse', action='store_true', help='Open browser')
parser.add_argument('-u', '--update', action='store_true', help='Update page')
args = parser.parse_args()

path = re.sub('.md$','','/'+args.file_path)

if args.browse:
    webbrowser.open_new(urllib.parse.quote(url+path, safe=':/'))
elif args.update:
    with open(args.file_path.strip()) as f:
        body = f.read()
    g.pages_create(path,body)
    g.pages_update(path,body)
else:
    print(g.pages_get(path))

print(json.loads(g.pages_get(path))["ok"])