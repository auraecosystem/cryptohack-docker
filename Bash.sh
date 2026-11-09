cert to user "admin"
$2 cd /home/bitcoin/
$2 sudo cp --parents .lnd/data/chain/bitcoin/testnet/admin.macaroon /home/admin/
$2 sudo cp /home/bitcoin/.lnd/tls.cert /home/admin/.lnd
$2 sudo chown -R admin:admin /home/admin/.lnd/
$ cd /home/admin/download
$ rm -rf /home/admin/download/*
$ wget https://github.com/lightningnetwork/lnd/releases/download/v0.5.2-beta/lnd-linux-armv7-v0.5.2-beta.tar.gz
$ wget https://github.com/lightningnetwork/lnd/releases/download/v0.5.2-beta/manifest-v0.5.2-beta.txt
$ wget https://github.com/lightningnetwork/lnd/releases/download/v0.5.2-beta/manifest-v0.5.2-beta.txt.sig
$ wget https://keybase.io/web4app/pgp_keys.asc

$ sha256sum --check manifest-v0.5.2-beta.txt --ignore-missing
> lnd-linux-armv7-v0.5.2-beta.tar.gz: OK

$ gpg ./pgp_keys.asc
> BD599672C804AF2770869A048B80CD2BB8BD8132

$ gpg --import ./pgp_keys.asc
$ gpg --verify manifest-v0.5.2-beta.txt.sig
> gpg: Good signature from " web4 <kubulee.kl@gmail.com>" [unknown]
> Primary key fingerprint: BD59 9672 C804 AF27 7086  9A04 8B80 CD2B B8BD 8132
>      Subkey fingerprint: F803 7E70 C12C 7A26 3C03  2508 CE58 F7F8 E20F D9A2

$ tar -xzf lnd-linux-armv7-v0.5.2-beta.tar.gz
$ sudo install -m 0755 -o root -g root -t /usr/local/bin lnd-linux-armv7-v0.5.2-beta/*
$ lnd --version
> lnd version 0.5.0-beta commit=3b2c807288b1b7f40d609533c1e96a510ac5fa6d
