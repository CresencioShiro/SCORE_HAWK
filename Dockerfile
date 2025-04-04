FROM php:7.4-cli
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/CresencioShiro/SCORE_HAWK && cp -r RED_HAWK /usr/src/redhawk
WORKDIR /usr/src/scorehawk
CMD [ "php", "./shawk.php", "<<<","$'fix'" ]
CMD [ "php", "./shawk.php", "<<<","$'update'" ]
CMD [ "php", "./shawk.php" ] 
