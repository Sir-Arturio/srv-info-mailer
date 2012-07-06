if [ ! "${1}" ]
then
	echo "Please provide DESTINATION EMAIL."
	exit 1
fi
if [ ! "${2}" ]
then
	echo "Please provide SMTP SERVER."
	exit 1
fi
/usr/bin/sendEmail -f $(hostname)@server.com -t $1 -s $2 -u "Server status" -o message-file=/etc/motd
