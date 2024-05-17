{ pkgs, ... }: {
  bootstrap = ''
    cp -rf ${./.} "$out"
    chmod -R +w "$out"
    cp ${./.env.example} "$out/.env"
    chmod +w "$out/.env"
    rm -rf "$out/.git" "$out/idx-template".{nix,json}
  '';
}