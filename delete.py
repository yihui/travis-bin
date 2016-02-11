import json, sys, os
d = json.load(sys.stdin)['assets']
for a in d:
    if a['name'] == sys.argv[1] + '.tar.gz':
        os.system('curl -u yihui:' + os.getenv('GH_TOKEN') + ' -X DELETE ' + a['url'])
