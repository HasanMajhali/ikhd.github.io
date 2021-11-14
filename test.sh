#!/bin/sh
clear
echo -e "\e[32m"
echo -----------------------------------------
echo -kkkkkkkkkkkkkk-
echo -----------------------------------------
echo
echo - Support STC - Mobily - Zain "&" GCC Operators -
echo
echo "############"
echo "#Band list##"
echo "############"
echo
echo -------------------------FDD BANDS------------------------------
echo - "1800 = 3"  "700 = 28" "900 = 8"
echo - "2100 = 1"  "800 = 20" "2600 = 7"
echo ----------------------------------------------------------------
echo
echo -------------------------TDD BANDS------------------------------
echo - "2300 = 40" "2600 = 38" "3700 = 43"
echo - "2500 = 41" "3500 = 42"
echo ----------------------------------------------------------------
echo -e "\e[0m"
echo "Enter First Band : "
K=0
read N1
if [[ $N1 -gt 64 ]]
then
K=$(( $N1 -64 ))
K=$(( $K -1 ))
K=$(( 2 ** $K ))
K=`printf "%X\n" "$K"`
fi
LBAND=$N1
X=$(( $LBAND -1 ))
BBAND=$(( 2 ** $X ))
MR1=`printf "AT!Band=03,\"B$LBAND\",0,%X\n" "$BBAND"`
echo $MR1,$K
M1=0x`printf "%X\n" "$BBAND"`
K1=0x`printf "%X\n" "$K"`
echo --------------------------------------------------------------------------
echo "Enter Second Band : "
K=0
read N2
if [[ $N2 -gt 64 ]]
then
K=$(( $N2 -64 ))
K=$(( $K -1 ))
K=$(( 2 ** $K ))
K=`printf "%X\n" "$K"`
fi
LBAND=$N2
X=$(( $LBAND -1 ))
BBAND=$(( 2 ** $X ))
MR1=`printf "AT!Band=03,\"B$LBAND\",0,%X\n" "$BBAND"`
echo $MR1,$K
M2=0x`printf "%X\n" "$BBAND"`
K2=0x`printf "%X\n" "$K"`
echo --------------------------------------------------------------------------
echo -e "\e[31m"
echo 2-CA
BBAND=$(( $M1 + $M2 ))
K=$(( $K1 + $K2 ))
echo -e "\x1b[1m"
MR1=`printf "AT!Band=03,\"B$N1+B$N2\",0,%X\n" "$BBAND"`
echo $MR1,$K
echo -e "\e[0m"
echo --------------------------------------------------------------------------
echo "Enter Third Band : "
K=0
read N3
if [[ $N3 -gt 64 ]]
then
K=$(( $N3 -64 ))
K=$(( $K -1 ))
K=$(( 2 ** $K ))
K=`printf "%X\n" "$K"`
fi
LBAND=$N3
X=$(( $LBAND -1 ))
BBAND=$(( 2 ** $X ))
MR1=`printf "AT!Band=03,\"B$LBAND\",0,%X\n" "$BBAND"`
echo $MR1,$K
M3=0x`printf "%X\n" "$BBAND"`
K3=0x`printf "%X\n" "$K"`
echo --------------------------------------------------------------------------
echo -e "\e[31m"
echo 3-CA
BBAND=$(( $M1 + $M2 +$M3 ))
K=$(( $K1 + $K2 +$K3 ))
echo -e "\x1b[1m"
MR1=`printf "AT!Band=03,\"B$N1+B$N2+B$N3\",0,%X\n" "$BBAND"`
echo $MR1,$K
echo -e "\e[0m"
echo --------------------------------------------------------------------------
echo "Enter Fourth Band : "
K=0
read N4
if [[ $N4 -gt 64 ]]
then
K=$(( $N4 -64 ))
K=$(( $K -1 ))
K=$(( 2 ** $K ))
K=`printf "%X\n" "$K"`
fi
LBAND=$N4
X=$(( $LBAND -1 ))
BBAND=$(( 2 ** $X ))
MR1=`printf "AT!Band=03,\"B$LBAND\",0,%X\n" "$BBAND"`
echo $MR1,$K
M4=0x`printf "%X\n" "$BBAND"`
K4=0x`printf "%X\n" "$K"`
echo --------------------------------------------------------------------------
echo -e "\e[31m"
echo 4-CA
BBAND=$(( $M1 + $M2 +$M3 +$M4 ))
K=$(( $K1 + $K2 +$K3 +$K4 ))
echo -e "\x1b[1m"
MR1=`printf "AT!Band=03,\"B$N1+B$N2+B$N3+B$N4\",0,%X\n" "$BBAND"`
echo $MR1,$K
echo -e "\e[0m"
echo --------------------------------------------------------------------------
echo "Enter Fifth Band : "
K=0
read N5
if [[ $N5 -gt 64 ]]
then
K=$(( $N5 -64 ))
K=$(( $K -1 ))
K=$(( 2 ** $K ))
K=`printf "%X\n" "$K"`
fi
LBAND=$N5
X=$(( $LBAND -1 ))
BBAND=$(( 2 ** $X ))
MR1=`printf "AT!Band=03,\"B$LBAND\",0,%X\n" "$BBAND"`
echo $MR1,$K
M5=0x`printf "%X\n" "$BBAND"`
K5=0x`printf "%X\n" "$K"`
echo --------------------------------------------------------------------------
echo -e "\e[31m"
echo 5-CA
BBAND=$(( $M1 + $M2 +$M3 +$M4 +$M5 ))
K=$(( $K1 + $K2 +$K3 +$K4 + $K5 ))
echo -e "\x1b[1m"
MR1=`printf "AT!Band=03,\"B$N1+B$N2+B$N3+B$N4+B$N5\",0,%X\n" "$BBAND"`
echo $MR1,$K
echo -e "\e[0m"
echo --------------------------------------------------------------------------
EXIT(){
		echo -e "\e[33m"
		read -p "Would you like to exit ? (y/n): " result;
		[ $result = 'n' ] && bash test.sh;
		[ $result = 'y' ] && return 1;
}
EXIT "$@";
