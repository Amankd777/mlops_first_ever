FROM python:3.8-slim-buster
USER root
RUN mkdir /app
COPY . /app/
WORKDIR /app/
RUN pip3 install -r requirements.txt
ENV AIRFLOW_HOME="/app/airflow"
ENV AIRFLOW_CORE_DAGBAG_IMPORT_TIME=1000
ENV AIRFLOW_CORE_ENABLE_XCOM_PICKLINE=True
RUN airflow db init
RUN airflow users create -e ppar64602@gmail.com -f aman -1 aman -p
RUN chmod 777 start.sh
RUN apt update -y
ENTRYPOINT [ "/bin/sh" ]
CMD [ "start.sh" ]