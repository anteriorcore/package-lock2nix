{ package-lock2nix }:

package-lock2nix.mkNpmModule {
  src = ./.;
  packageJsonSrc = ./src;
  prePatch = ''
    cd src
  '';
  doCheck = true;
  checkPhase = ''
    node index.js | tee >(cat >&2) | grep -q '^hello, John$'
  '';
}
