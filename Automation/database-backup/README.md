**This repo is for database backup scripts collaboration.**

* Backup scripts for Elasticsearch, MongoDB, MySQL, Postgres are placed inside /scripts folder
* Backup client packages are installed through Dockerfile, if any version mismatch found, can be changed in Dockerfile 
* We have used cronjob to schedule scripts execution individually in Dockerfile
* By default scripts are scheduled to run at 12:00 AM, if need to change schedule configuration, it can changed in Dockerfile itself, and redepoly the new image (make sure to change image tag in db-backup.yml stack file while deploying stack with new image)
* We have second way to change cron schedule configuartion, we can directly change time in container itself by command 'contab -e'. But make sure if container restarts, default configuration from Image will be applied
* You can refer https://crontab.guru to verify the cronjob time