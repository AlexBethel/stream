{
  description = "Goofy audio stream repo";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        streamScript = streamName: pkgs.writeScriptBin streamName ''
          #!${pkgs.bash}/bin/bash
          export PATH=${pkgs.ffmpeg}/bin:${pkgs.yt-dlp}/bin:$PATH
          ${./main.sh} ${streamName}
        '';
      in
      {
        lofi = streamScript "lofi";
        jazz = streamScript "jazz";
        rain = streamScript "rain";
        fire = streamScript "fire";
      };
  };
}
