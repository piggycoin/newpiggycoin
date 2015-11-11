// Copyright (c) 2012 The Bitcoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
#ifndef BITCOIN_VERSION_H
#define BITCOIN_VERSION_H

#include "clientversion.h"
#include <string>

//
// client versioning
//

static const int CLIENT_VERSION =
                           1000000 * CLIENT_VERSION_MAJOR
                         +   10000 * CLIENT_VERSION_MINOR
                         +     100 * CLIENT_VERSION_REVISION
                         +       1 * CLIENT_VERSION_BUILD;

extern const std::string CLIENT_NAME;
extern const std::string CLIENT_BUILD;
extern const std::string CLIENT_DATE;

//
// database format versioning
//
static const int DATABASE_VERSION = 70508;

//
// network protocol versioning
//

//static const int PROTOCOL_VERSION = 60014;      // Versions 1.0 through 1.2.0     // From this, PiggyCoin appears to be forked from bitcoin core ~0.6.2
//static const int PROTOCOL_VERSION = 60101;      // Version 1.2.1.1
//static const int PROTOCOL_VERSION = 60200;      // Version 1.2.2.0 - 1.2.2.1
static const int PROTOCOL_VERSION = 60300;      // Version 1.2.3.0

// earlier versions not supported as of Feb 2012, and are disconnected
static const int MIN_PROTO_VERSION = 209;

// old versions not supported as of Mar 2015, and are banned (Versions 1.2.0 or lower)
static const int MIN_BAN_VERSION = 60014;

// nTime field added to CAddress, starting with this version;
// if possible, avoid requesting addresses nodes older than this
static const int CADDR_TIME_VERSION = 31402;

// only request blocks from nodes outside this range of versions
static const int NOBLKS_VERSION_START = 60002;
static const int NOBLKS_VERSION_END = 60014;    // Do not request blocks from versions 1.0 through 1.2.0

// BIP 0031, pong message, is enabled for all versions AFTER this one
static const int BIP0031_VERSION = 60000;

// "mempool" command, enhanced "getdata" behavior starts with this version:
static const int MEMPOOL_GD_VERSION = 60002;

#endif
