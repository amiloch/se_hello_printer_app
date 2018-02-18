Simple Flask App
================

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- Rozpocząnając pracę z projektem (wykorzystując virtualenv). Hermetyczne środowisko dla pojedyńczej aplikacji w pythonie:

1. rozpoczyanmy od wpisania atom ~/.bashrc
  ::

2.  source /usr/bin/virtualenvwrapper.sh -> potem jeżeli po wpisaniu w bash w konsoli wywala błąd trzeba skorzystać
    ze wszystkich komend pomocniczych

3.   mkvirtualenv wsb-simple-flask-app to w konsoli
4.    pip install -r requirements.txt
5.    pip install -r test_requirements.txt

- Uruchamianie applikacji:
 6. przed uruchomieniem main.py w konsoli workon wsb-simple-flask-app
  ::

    # jako zwykły program
    python main.py

    # albo:
    PYTHONPATH=. FLASK_APP=hello_world flask run

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

  ::

    PYTHONPATH=. py.test
    PYTHONPATH=. py.test  --verbose -s

- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ::

    source /usr/bin/virtualenvwrapper.sh
    workon wsb-simple-flask-app


- Integracja z TravisCI:
==========================

.. image:: https://travis-ci.org/amiloch/se_hello_printer_app.svg?branch=master
    :target: https://travis-ci.org/amiloch/se_hello_printer_app




Monitoring
===========

statuscake

.. image:: https://app.statuscake.com/button/index.php?Track=v0QFgtxqeR&Days=1&Design=1
     :target: https://wwww.statuscake.com



Pomocnicze
==========

- Instalacja python virtualenv i virtualenvwrapper:

  ::

    yum install python-pip
    pip install -U pip
    pip install virtualenv
    pip install virtualenvwrapper

- Instalacja docker-a:

  ::

    yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

    yum install -y yum-utils

    yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

    yum makecache fast
    yum install docker-ce
    systemctl start docker

Materiały
=========

- https://virtualenvwrapper.readthedocs.io/en/latest/
