FROM python:3.8

# Install AWS CLI
RUN pip install awscli --upgrade --user

# Adding AWS CLI Executable to Path
RUN echo 'export PATH=~/.local/bin:$PATH'>>root/.bashrc

# Install groff to enable AWS CLI command line help
RUN apt-get update \
    && apt-get --assume-yes install groff

WORKDIR /code
COPY . .
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000

# Install tools needed
RUN ./tools.sh
# Install python project dependencies
RUN pip install -r requirements.txt
RUN npm install -g aws-cdk

CMD ["flask", "run"]