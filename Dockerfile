FROM ubuntu/apache2
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install bottle>=0.12 PyMySQL dnspython3
RUN rm /etc/apache2/sites-enabled/*
RUN rm /etc/apache2/sites-available/*
ADD . /dnsconformance
RUN cp /dnsconformance/WebContent/Conformance.conf.proto /etc/apache2/sites-enabled/Conformance.conf
RUN cp /dnsconformance/apache2.conf /etc/apache2/apache2.conf
RUN ln -s /etc/apache2/mods-available/cgi.load /etc/apache2/mods-enabled/cgi.load
