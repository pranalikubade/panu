isPartTime=1
isFullTime=2
TotalSalary=0
EmpRatePerHr=20
NumWorkingDays=10

for(( day=1; day<=$NumWorkingDays; day++ ))
do
	EmpCheck=$((RANDOM%3))
		case $EmpCheck in
			$isFullTime)
			EmpHr=8
			;;
			$isPartTime)
			EmpHr=4
			;;
			*)
			EmpHr=0
			;;
		esac
		Salary=$(($EmpHr+$EmpRatePerHr))
		echo "Salary=$Salary"
done
