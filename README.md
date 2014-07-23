Piggycoin integration/staging tree
================================

http://www.piggy-coin.org

Copyright (c) 2014 Piggycoin Developers  
Copyright (c) 2014 Hackcoin Developers  
Copyright (c) 2013-2014 NovaCoin Developers  
Copyright (c) 2011-2012 PPCoin Developers  
Copyright (c) 2011-2014 Litecoin Developers  
Copyright (c) 2009-2014 Bitcoin Developers  

What is Piggycoin?
----------------

Piggycoin is a beginner-friendly cryptocurrency that uses scrypt as a proof-of-work algorithm.
 - X minute block targets
 - subsidy halves in X blocks (~X years)
 - ~X total coins
 - X coins per block
 - X blocks to retarget difficulty

For more information, as well as an immediately useable, binary version of
the Piggycoin client sofware, see http://www.piggy-coin.org.

Getting Started
----------------
### How to build UltimateCoin

    sudo apt-get install build-essential \
                         libssl-dev \
                         libdb5.1++-dev \
                         libboost-all-dev \
                         libqrencode-dev \
                         libminiupnpc-dev

    cd src/
    make -f makefile.unix USE_UPNP=- USE_IPV6=1 USE_QRCODE=1

### Quickstart for Linux Users

    cd ~
    sudo apt-get install build-essential libboost-all-dev libcurl4-openssl-dev libdb5.1-dev \
                         libdb5.1++-dev qt4* libqrencode-dev
    git clone https://github.com/piggycoin/newpiggycoin.git
    cd newpiggycoin
    qmake USE_UPNP=- USE_IPV6=1 USE_QRCODE=1 && make
    
For more information and options, please look at doc/build-unix.md.
