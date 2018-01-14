# wizdom.sh
Download and unzip subtitles from wizdom.xyz

# Installation

```bash
sudo apt install jq parallel -y
curl -sSLf https://raw.githubusercontent.com/assafmo/wizdom.sh/master/wizdom.sh | sudo tee /usr/local/bin/wizdom > /dev/null
sudo chmod +x /usr/local/bin/wizdom
```

# Usage
```bash
wizdom <imdb_id> <sub_name_regex>
```
```bash
wizdom.sh tt0944947 s05 # all of GOT S05 subtitles
```
