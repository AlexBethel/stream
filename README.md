# Audio streams

This repo is a silly little setup that allows me to stream a couple of
music & noise channels from the command line with no dependencies
other than Nix, so I can super easily run them on my work computer or
wherever :P

    nix run github:alexbethel/stream#lofi   # Lofi Girl
    nix run github:alexbethel/stream#jazz   # Lofi Jazz
    nix run github:alexbethel/stream#rain   # Rain noise
    nix run github:alexbethel/stream#fire   # Fireplace noise

Not really for use by anyone else, it's just here so I don't have to
sign in when I run those commands.
