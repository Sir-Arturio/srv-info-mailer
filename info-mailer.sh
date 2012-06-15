if [ ! "${1}" ]
then
	echo "Please provide an email address to send to."
	exit 1
fi
/usr/bin/sendEmail -f $(hostname)@server.com -t $1 -s mail.inet.fi -u "Server status" -o message-file=/etc/motd
