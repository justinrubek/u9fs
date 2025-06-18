{
  lib,
  stdenv,
}:

stdenv.mkDerivation {
  name = "u9fs";
  pname = "u9fs";

  src = ./.;

  installPhase = ''
    install -Dm644 u9fs.man "$out/share/man/man4/u9fs.4"
    install -Dm755 u9fs -t "$out/bin"
  '';

  meta = with lib; {
    description = "Serve 9P from Unix";
    homepage = "http://p9f.org/magic/man2html?man=u9fs&sect=4";
    license = licenses.dtoa;
    platforms = platforms.unix;
    mainProgram = "u9fs";
  };
}
