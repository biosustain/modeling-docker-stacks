import requests
import shutil
import sys

token, filepath = sys.argv[1:3]

url = 'https://api.github.com/repos/biosustain/modeling-private-dependencies/contents'
sha_url = 'https://api.github.com/repos/biosustain/modeling-private-dependencies/git/blobs/{}'
headers = {'Authorization': 'token {}'.format(token), 'Accept': 'application/vnd.github.v3.raw'}
files_meta = requests.get(url, headers=headers).json()
sha = [i for i in files_meta if i['path'] == filepath][0]['sha']
response = requests.get(sha_url.format(sha), headers=headers, stream=True)
with open(filepath, 'wb') as out_file:
    shutil.copyfileobj(response.raw, out_file)
