#! /usr/bin/env bash
#
# TP A311 2019-2020
# test de echoargenv
#
#

PATH=.:$PATH
echoargenv
echoargenv PATH HOME PWD
echoargenv TOTO
export TOTO="mon test de TOTO"
echoargenv TOTO
