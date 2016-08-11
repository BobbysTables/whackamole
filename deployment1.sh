#!/bin/ksh
###################################################################
# PRN10259 script used to ensure proper deployment of war file 
###################################################################

dt=`date +%m%d%Y`

lib=/usr/appl/col/home/uatcol/ntscripts/lib
dest=/usr/appl/col/home/uatcol/spbackup/$dt
source=/usr/appl/col/home/uatcol/mfdata
SCRIPTS_DIR=/usr/appl/col/home/uatcol/ntscripts
PATH=$PATH:/usr/appl/col/java/jdk1.6.0_45/bin
COL_EMAIL=Colline_v13_IT_Team@ntrs.com


SCRIPT=$0

#if [ ! -d "/usr/appl/col/home/uatcol/colline/jboss/server/default/deploy/management/colliine1.war" ]; then cp -r "/usr/appl/col/home/uatcol/.deploy/colliine.war/" "/usr/appl/col/home/uatcol/colline/jboss/server/default/deploy/management/colliine1.war" > /dev/null 2>&1 && /usr/appl/col/home/uatcol/colline/jboss/bin/twiddle.sh invoke jboss.system:service=MainDeployer deploy /usr/appl/col/home/uatcol/colline/jboss/server/default/deploy/management/colliine1.war > /dev/null 2>&1 ;fi

dat=`date +%m/%d/%y%n%H:%M:%S`
echo ' '
echo "$SCRIPT script ended at..." $dat >/tmp/warDeploymentChecked.txt
echo ' '
