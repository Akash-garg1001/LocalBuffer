# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
echo " !! Welcome Akash !! "

###########
## COMMON
###########
INSTALL_PATH=/var/amt/install
AMT_INSTALL_ROOT=/home/aakash/userInstall/amt
VENDORS_INSTALL_ROOT=${INSTALL_PATH}/vendors

###########
## UTIL
###########A
export AMT_UTIL_SHARED_ROOT=${AMT_INSTALL_ROOT}/util/Shared
export AMT_UTIL_DBEXPORT_ROOT=${AMT_INSTALL_ROOT}/util/DBExport
export AMT_UTIL_TRANSPORT_ROOT=${AMT_INSTALL_ROOT}/util/Transport
export AMT_UTIL_TRANSPORT_TCP_CLIENT_ROOT=${AMT_UTIL_TRANSPORT_ROOT}/tcpClient
export AMT_UTIL_TRANSPORT_TCP_SERVER_ROOT=${AMT_UTIL_TRANSPORT_ROOT}/tcpServer
export AMT_UTIL_TRANSPORT_RAW_TCP_SERVER_ROOT=${AMT_UTIL_TRANSPORT_ROOT}/rawTcpServer
export AMT_UTIL_TRANSPORT_RAW_UDP_SERVER_ROOT=${AMT_UTIL_TRANSPORT_ROOT}/rawUdpServer
export AMT_UTIL_TRANSPORT_RAW_UDP_CLIENT_ROOT=${AMT_UTIL_TRANSPORT_ROOT}/rawUdpClient
export AMT_TEST_ROOT=${AMT_INSTALL_ROOT}/test
export AMT_PROTOBUF_MESSAGE_ROOT=${AMT_INSTALL_ROOT}/protomessage

###########
## Primary Server
###########
export AMT_PS_MESSAGES_ROOT=${AMT_INSTALL_ROOT}/ps/messages
export AMT_PS_ORDERTRADE_ROOT=${AMT_INSTALL_ROOT}/ps/orderTrade
export AMT_PS_USERS_ROOT=${AMT_INSTALL_ROOT}/ps/users
export AMT_PS_CONTRACT_ROOT=${AMT_INSTALL_ROOT}/ps/contracts
export AMT_PS_STRATEGY_ROOT=${AMT_INSTALL_ROOT}/ps/strategy
export AMT_PS_POSITION_ROOT=${AMT_INSTALL_ROOT}/ps/positions
export AMT_STRATEGY_HELPER_ROOT=${AMT_INSTALL_ROOT}/strategyHelper

export AMT_HW_PS_MESSAGES_ROOT=${AMT_INSTALL_ROOT}/ps_hw/messages
export AMT_HW_PS_USERS_ROOT=${AMT_INSTALL_ROOT}/ps_hw/users
export AMT_HW_PS_STRATEGY_ENGINE_ROOT=${AMT_INSTALL_ROOT}/ps_hw/strategyEngine
export AMT_STRATEGY_HELPER_ROOT=${AMT_INSTALL_ROOT}/strategyHelper
export AMT_HW_PS_CONTRACT_ROOT=${AMT_INSTALL_ROOT}/ps_hw/contracts


###########
## VENDORS
###########
export AMT_PROTOBUF_ROOT=${VENDORS_INSTALL_ROOT}/protobuf
export ECLIPSE_ROOT=${VENDORS_INSTALL_ROOT}/eclipse
export GIT_ROOT=${VENDORS_INSTALL_ROOT}/git-2.10.1
export BOOST_INSTALL_ROOT=${VENDORS_INSTALL_ROOT}/boost_1_61_0
export LZO_ROOT=${VENDORS_INSTALL_ROOT}/lzo_107
export JAVA_HOME=${VENDORS_INSTALL_ROOT}/jdk1.8.0_101
export POSTGRESQL_ROOT=${VENDORS_INSTALL_ROOT}/postgresql_9_6_0
export LIBPGXX_ROOT=${VENDORS_INSTALL_ROOT}/libpgxx_4_0
export GTEST_ROOT=${VENDORS_INSTALL_ROOT}/gtest
export FASTFLOW_ROOT=${VENDORS_INSTALL_ROOT}/fastflow/fastflow-2.1.0
export PGDATA=/var/amt/pg_database/data
export TBB_ROOT=${VENDORS_INSTALL_ROOT}/tbb

export AMT_TBTHANDLER_ROOT=${AMT_INSTALL_ROOT}/tbthandler
export AMT_CORE_ENGINE=${AMT_INSTALL_ROOT}/coreEngine
export AMT_USER_DEFINED_STRATEGY=${AMT_INSTALL_ROOT}/userDefinedStrategy
##########
## PATH
##########
export PATH=${POSTGRESQL_ROOT}/bin:${GIT_ROOT}:${POSTGRESQL_ROOT}/bin:${ECLIPSE_ROOT}:${JAVA_HOME}/bin:${PATH}


##########
## DYNAMIC LIB PATH
##########

export LD_LIBRARY_PATH=${TBB_ROOT}/lib:${AMT_UTIL_MESSAGE_ROOT}/lib:${AMT_PS_CONTRACT_ROOT}/lib:${AMT_PS_MESSAGES_ROOT}/lib:${AMT_PS_USERS_ROOT}/lib:${AMT_PS_STRATEGY_ENGINE_ROOT}/lib:${AMT_STRATEGY_HELPER_ROOT}/lib:${AMT_PROTOBUF_ROOT}/lib:${AMT_PROTOBUF_MESSAGE_ROOT}/lib:${AMT_TEST_ROOT}/lib:${AMT_UTIL_DBEXPORT_ROOT}/lib:${GTEST_ROOT}/lib:${AMT_PS_ORDERTRADE_ROOT}/lib:${TBTHANDLER_ROOT}/lib:${AMT_UTIL_TRANSPORT_RAW_UDP_CLIENT_ROOT}/lib:${AMT_UTIL_TRANSPORT_RAW_UDP_SERVER_ROOT}/lib:${AMT_UTIL_TRANSPORT_RAW_TCP_SERVER_ROOT}/lib:/home/ankit/workNew/strategyHandler/lib:${LIBPGXX_ROOT}/lib:${POSTGRESQL_ROOT}/lib:${LZO_ROOT}/lib:${AMT_PS_USERS_ROOT}/lib:${AMT_PS_CONTRACT_ROOT}/lib:${AMT_PS_STRATEGY_ROOT}/lib:${AMT_PS_POSITION_ROOT}/lib:${AMT_STRATEGIES_ROOT}/lib:${SQLITE_ROOT}/lib:${AMT_UTIL_TRANSPORT_TCP_CLIENT_ROOT}/lib:${AMT_UTIL_TRANSPORT_TCP_SERVER_ROOT}/lib:${AMT_ORDERBOOK_ROOT}/lib:/home/ankit/install/ncurses/lib:${INSTALL_PATH}/zlib/lib:${AMT_UTIL_TRANSPORT_ROOT}/lib:${AMT_UTIL_SHARED_ROOT}/lib:${AMT_PS_MESSAGES_ROOT}/lib:${BOOST_INSTALL_ROOT}/lib:${LD_LIBRARY_PATH}

############
### Aliases
############
alias runEclipse='taskset -c 8-15 nohup eclipse > /dev/null 2>&1 &'
alias ll='ls -ltr'
alias coreFilePath='cd /proc/sys/kernel/core_pattern'
alias readPcap='tcpdump -qns 0 -X -r'
alias extractWords="grep -o -E '\w+'"
