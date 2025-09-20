# Packages can be built directly from a remote source.

{ package-lock2nix, nodejs_24 }:
package-lock2nix.mkNpmModule {
  src = builtins.fetchTree "github:immutable-js/immutable-js/fce542f596e7c5908c93e7bfb0f6528d2fe3aec8";
}
