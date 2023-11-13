function docker() {
    ssh -o ConnectTimeout=10 root@"${DIND_HOST:-dind}" "docker $@"
}

function execute() {
    docker compose exec -T "${HOST:-${DIND_HOST:-dind}}" $@
}

function beeline() {
    HOST=${HIVE_HOST:-hive} execute beeline $@
}

function new_file() {
    local file_path=$1
    [ -z "${file_path}" ] && {
        echo "A new file's path expected" >&2
        return 1
    }

    > "${file_path}"

    while read line; do
        echo "${line}" >> "${file_path}"
    done

    docker compose cp $(hostname):${file_path} $(dirname "${file_path}")
    docker compose cp ${file_path} "${HOST:-$(hostname)}":$(dirname "${file_path}")
}

function hdfs() {
    HOST=hadoop execute \
    hdfs "$@"
}
