#!/bin/sh
# entries.json을 src.html에 넣어 공개 사이트용 index.html을 만든다.
cd "$(dirname "$0")" && python3 -c "s=open('src.html').read();open('index.html','w').write(s.replace('__ENTRIES__',open('entries.json').read()))"
