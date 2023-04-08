with import <nixpkgs> {};
mkShell {
    buildInputs = [
        ansible
        ansible-lint
    ];
}