all		  :; @echo "Please specify a network (i.e. 'make mainnet' or 'make goerli')"
goerli    :; ./script/fund-pause-proxy-goerli.sh
mainnet   :; ./script/fund-pause-proxy-mainnet.sh
