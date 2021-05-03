FROM nixos/nix

RUN nix-env -iA nixpkgs.git
RUN git clone https://github.com/input-output-hk/offchain-metadata-tools

WORKDIR offchain-metadata-tools
RUN nix-build -A token-metadata-creator

RUN find /nix/store/ -name token-metadata-creator -type f -exec cp {} /usr/bin \;