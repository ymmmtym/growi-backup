# Spotify

## API

### Example

```shell
source ~/.config/credentials/spotify

SPOTIFY_CLIENT=$(echo -n ${SPOTIFY_CLIENT_ID}:${SPOTIFY_CLIENT_SECRET} | base64)
SPOTIFY_ACCESS_TOKEN=$(curl -sX "POST" -H "Authorization: Basic ${SPOTIFY_CLIENT}" \
    -d grant_type=client_credentials https://accounts.spotify.com/api/token | \
    jq -r .access_token)
    
curl -H "Authorization: Bearer ${SPOTIFY_ACCESS_TOKEN}"  \
GET https://api.spotify.com/v1/artists/1O8CSXsPwEqxcoBE360PPO
```

## Reference

<https://dev.classmethod.jp/articles/about-using-of-spotify-api/>
