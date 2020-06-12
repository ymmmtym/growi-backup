import requests
import datetime
import json


class Growi():
    def __init__(self, url, access_token):
        self.url = url
        self.access_token = access_token
        self.d_today = datetime.date.today()
        self.d_today_fmt = self.d_today.strftime('%Y/%m/%d')
        self.now = datetime.datetime.now()
        self.now_fmt = self.now.strftime('%Y/%m/%d/%H%M%S')

    def pages_get(self, path):
        endpoint = f'{self.url}/_api/pages.get'
        res = requests.get(endpoint, params={'path':path, 'access_token':self.access_token})
        return json.dumps(res.json(),indent=2)

    def pages_create(self, path, body):
        endpoint = f'{self.url}/_api/pages.create'
        res = requests.post(endpoint, data={'body':body, 'path':path, 'access_token':self.access_token})
        return json.dumps(res.json(),indent=2)

    def pages_update(self, path, body):
        endpoint = f'{self.url}/_api/pages.update'
        page_id = json.loads(self.pages_get(path))['page']['id']
        revision_id = json.loads(self.pages_get(path))['page']['revision']['_id']
        res = requests.post(endpoint, data={'body':body, 'page_id':page_id, 'revision_id': revision_id, 'access_token': self.access_token})
        return json.dumps(res.json(),indent=2)

    def pages_rename(self, path, new_path):
        endpoint = f'{self.url}/_api/pages.rename'
        page_id = json.loads(self.pages_get(path))['page']['id']
        revision_id = json.loads(self.pages_get(path))['page']['revision']['_id']
        res = requests.post(endpoint, data={'new_path': new_path,'page_id':page_id, 'revision_id': revision_id, 'access_token': self.access_token})
        return json.dumps(res.json(),indent=2)


if __name__ == '__main__':
    pass
