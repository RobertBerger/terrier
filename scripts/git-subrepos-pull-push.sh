HERE=$(pwd)

set -x
./git-subrepos-pull.sh && cd $(pwd) && ./git-subrepos-push.sh
set +x

cd ${HERE}
