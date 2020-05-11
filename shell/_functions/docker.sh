function docker_list {
  containers=$(docker ps | awk '{if (NR!=1) print $1 ": " $(NF)}')

  echo "👇 Containers 👇"
  echo $containers
}