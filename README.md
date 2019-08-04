# SRTool Dockerfile
## Run YP "Security Response Tool" as Container

Run srtool https://git.yoctoproject.org/cgit/cgit.cgi/srtool in a Docker container.

- Image: python:3-slim (Debian)
- Python, Django/SQLite3
- Webserver: port 8000

## Config and script files

Either use `docker-compose`

- Dockerfile
- docker-compose.yml

Or standard `docker build/run` commands (examples as .sh)

- Dockerfile
- docker-build.sh
- docker-run.sh

## Script Product Table

Extra example script to add Product Table item:

- test-products.json
- test-products.sh

## More info

* https://git.yoctoproject.org/cgit/cgit.cgi/srtool/about
* https://wiki.yoctoproject.org/wiki/Contribute_to_SRTool
* https://wiki.yoctoproject.org/wiki/SRTool_User_Page
