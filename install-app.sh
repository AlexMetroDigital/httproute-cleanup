VERSIONS=($(seq 1 1 50))

for VERSION in "${VERSIONS[@]}"; do
  SERVICES="{0}"
  if [[ $(expr "$VERSION" % 5) == "1" ]]; then
    SERVICES="{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}"
  fi
  helm upgrade --install --set version="${VERSION}" --set "services=${SERVICES}" "stores-v${VERSION}" ./stores-chart &
done
