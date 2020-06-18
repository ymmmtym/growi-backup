from growi import Growi

import os
import sys
import re
import webbrowser
# import urllib
# import chardet
import urllib.parse


url=os.environ['GROWI_URL']
access_token = os.environ['GROWI_ACCESS_TOKEN']

g = Growi(url,access_token)

file_path = sys.argv[1]
path = re.sub('.md$','','/'+file_path)

webbrowser.open_new(urllib.parse.quote(url+path, safe=':/'))
# print(url+path)