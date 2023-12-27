FROM ubuntu:latest

# Install cron
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

COPY test.sh /dir/test.sh
RUN chmod +x /dir/test.sh

# Setup cron job
RUN (crontab -l ; echo "* * * * * bash /dir/test.sh >> /var/log/cron.log") | crontab

ENTRYPOINT cron start && tail -f /var/log/cron.log


