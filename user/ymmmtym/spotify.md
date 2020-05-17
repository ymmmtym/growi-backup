# Spotify

## API

```shell
source ~/.config/credentials/spotify

SPOTIFY_CLIENT=$(echo -n ${SPOTIFY_CLIENT_ID}:${SPOTIFY_CLIENT_SECRET} | base64)
curl -sX "POST" -H "Authorization: Basic ${SPOTIFY_CLIENT}" \
    -d grant_type=client_credentials https://accounts.spotify.com/api/token | \
    jq -r .access_token
```
