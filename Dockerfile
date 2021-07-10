FROM python:3.7.3-stretch

## Step 1:
#  Create a working directory
WORKDIR /app

## Step 2:
# Copy source ode to working directory
COPY . flaskr /app/
COPY . instance/ /app/
COPY . setup.py /app/
COPY . setup.cfg /app/

## Step 3:
# install packages
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir -e . &&\
    pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
RUN flask init-db


## Step 4:
# Expose port 80
EXPOSE 80

## Step 5
CMD ["flask", "run", "--host=0.0.0.0"]