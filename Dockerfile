FROM chainmapper/walletbase-xenial
	
ENV WALLET_URL=https://github.com/cmdcoin/CommandCoin/releases/download/CommandCoin/cmd_linux_1.0.0.1.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip -j /tmp/wallet.zip -d /usr/local/bin \
	&& chmod +x /usr/local/bin/*

#rpc port & main port
EXPOSE 6666 35407

RUN mkdir /data
ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod +x /*.sh
CMD /start.sh cmd.conf CMD cmdd