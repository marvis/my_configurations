cat > ~/.fetchmailrc << istop
poll webmail.picb.ac.cn
	with proto POP3
	uidl
	user 'xiaohang'
	there with password 'xiaohang20053456'
	is 'mar' here
	mda "/usr/bin/procmail -d %T"
	options
	keep
istop

cat > ~/.procmailrc << istop
PATH=/bin:/usr/bin:/usr/local/bin 
VERBOSE=off
DEFAULT=/home/mar/.mail/mail1_picb
MAILDIR=/home/mar/.mail  
LOGFILE=/home/mar/.procmaillog  
# Recipes below this comment:

:0:
* ^TOmutt-user
mutt
istop

fetchmail
cat > ~/.fetchmailrc << istop
poll mail_gmail via pop.gmail.com
	with proto POP3
	user 'hang.xiao.hh'
	there with password 'new20053456'
	is 'mar' here
	mda "/usr/bin/procmail -d %T"
	options
	no keep
	ssl
	sslcertck
	sslcertpath /home/mar/.certs/
istop

cat > ~/.procmailrc << istop
PATH=/bin:/usr/bin:/usr/local/bin 
VERBOSE=off
DEFAULT=$HOME/.mail/mail2_gmail
MAILDIR=$HOME/.mail  
LOGFILE=$HOME/.procmaillog  
# Recipes below this comment:

:0:
* ^TOmutt-user
mutt
istop

fetchmail

cat > ~/.fetchmailrc << istop
poll mail_163 via pop3.163.com
	with proto POP3
	uidl
	user 'my_645'
	there with password 'xh2.718281828'
	is 'mar' here
	mda "/usr/bin/procmail -d %T"
	options
	keep
istop

cat > ~/.procmailrc << istop
PATH=/bin:/usr/bin:/usr/local/bin 
VERBOSE=off
DEFAULT=$HOME/.mail/mail3_163
MAILDIR=$HOME/.mail  
LOGFILE=$HOME/.procmaillog  
# Recipes below this comment:

:0:
* ^TOmutt-user
mutt
istop

#fetchmail

cat > ~/.fetchmailrc << istop
poll mail_yahoo via pop.mail.yahoo.com
	with proto POP3
	uidl
	user 'xiaohang_87'
	there with password 'xh2.718281828'
	is 'mar' here
	mda "/usr/bin/procmail -d %T"
	options
	keep
istop

cat > ~/.procmailrc << istop
PATH=/bin:/usr/bin:/usr/local/bin 
VERBOSE=off
DEFAULT=$HOME/.mail/mail4_yahoo
MAILDIR=$HOME/.mail  
LOGFILE=$HOME/.procmaillog  
# Recipes below this comment:

:0:
* ^TOmutt-user
mutt
istop

#fetchmail

> ~/.fetchmailrc
> ~/.procmailrc
