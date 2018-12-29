./graftnoded $TESTNET --log-file graftnoded.log --detach

if [$SUPERNODE = "true"]
  graft_server --log-file graftserver.log
fi
