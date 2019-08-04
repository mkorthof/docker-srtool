#!/bin/sh
testdir="/srtool/bin/test"
tmpl_ps_do() {
  echo '
  {{if eq (print .Image) "'$1'"}}
    {{.ID}}
  {{end}}
  '
}
for i in  $( docker ps -a --format="$(tmpl_ps_do "srtool:latest")" ); do
    id=$i
done
docker exec -it $id mkdir $testdir
docker cp test-products.json $id:${testdir}/test-products.json
docker exec -it $id bin/yp/srtool_yp.py --init-products --file bin/test/test-products.json