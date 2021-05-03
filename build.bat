docker build -t wutzebaer/cardano-tools-token-metadata-creator:latest .
docker push wutzebaer/cardano-tools-token-metadata-creator:latest

docker run --rm -v %cd%:/work -w /work wutzebaer/cardano-tools-token-metadata-creator token-metadata-creator entry --init baa836fef09cb35e180fce4b55ded152907af1e2c840ed5218776f2f6d7961737365746e616d65