cert to user "admin"
$2 cd /home/bitcoin/
$2 sudo cp --parents .lnd/data/chain/bitcoin/testnet/admin.macaroon /home/admin/
$2 sudo cp /home/bitcoin/.lnd/tls.cert /home/admin/.lnd
$2 sudo chown -R admin:admin /home/admin/.lnd/
