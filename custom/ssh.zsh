# ssh related settings

# used in shuttle


function sshyy {
  ssh -i .ssh/duowan.id_rsa -l wenwenliu "$@"
}

function sshyyjump {
  ssh -A -i .ssh/duowan.id_rsa -l wenwenliu -p32200 172.19.160.5 -t "ssh -p32200 $1"
}

