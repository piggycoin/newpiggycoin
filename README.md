Piggycoin integration/staging tree
================================

http://www.piggy-coin.com

Copyright (c) 2014-2015 Piggycoin Developers  
Copyright (c) 2014 Hackcoin Developers  
Copyright (c) 2013-2014 NovaCoin Developers  
Copyright (c) 2011-2012 PPCoin Developers  
Copyright (c) 2011-2014 Litecoin Developers  
Copyright (c) 2009-2014 Bitcoin Developers  

What is Piggycoin?
----------------

Piggycoin is a beginner-friendly cryptocurrency that uses X11 for proof-of-work, adds proof-of-stake at block 8,000 and depricates proof-of-work at block 10,000.

 - 1 minute block targets
 - 1,000,000,000 total coins
 - 23,700 coins per block (PoW until block 10,000)
 - 0.13% effective annual interest (PoS @ block 8,000)
 - 3% interest (@ block 415,000 Approx March 7th, 2015)
 
For more information, as well as an immediately useable, binary version of
the Piggycoin client sofware, see http://www.piggy-coin.org.

Getting Started
----------------
### How to build PiggyCoin

    sudo apt-get install build-essential \
                         libssl-dev \
                         libdb5.1++-dev \
                         libboost-all-dev \
                         libqrencode-dev \
                         libminiupnpc-dev

    cd src/
    make -f makefile.unix USE_UPNP= USE_IPV6=1 USE_QRCODE=1

### Quickstart for Linux Users

    cd ~
    sudo apt-get install build-essential \
                         libssl-dev \
                         libdb5.1++-dev \
                         libboost-all-dev \
                         libqrencode-dev \
                         libminiupnpc-dev \
                         libcurl4-openssl-dev \
                         qt4*
    git clone https://github.com/piggycoin/newpiggycoin.git
    cd newpiggycoin
    qmake USE_UPNP=0 USE_IPV6=1 USE_QRCODE=1 && make
    
For more information and options, please look at doc/build-unix.md.
