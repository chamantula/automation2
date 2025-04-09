echo "export IVIVA_CONFIG_PATH=/var/data/iviva/iviva.config.yml" >> ~/.bashrc
/var/data/iviva/sdm/sdm mergedb DB /var/data/iviva/ivivaweb/DB/AccountDB.xml auto 
/var/data/iviva/sdm/sdm mergedb MessagingDB /var/data/iviva/ivivaweb/DB/MessagingDB.xml auto 
/var/data/iviva/sdm/sdm mergedb JobQueueDB /var/data/iviva/ivivaweb/DB/JobQueueDB.xml auto 
/var/data/iviva/sdm/sdm mergedb LucyEventDB /var/data/iviva/ivivaweb/DB/LucyEventDB.xml auto 
/var/data/iviva/sdm/sdm mergedb GroupDB /var/data/iviva/ivivaweb/DB/ProcessDB.xml auto
