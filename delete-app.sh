VERSIONS=($(seq 1 1 50))

for version in "${VERSIONS[@]}"
do
  helm uninstall "stores-v${version}" &
done
