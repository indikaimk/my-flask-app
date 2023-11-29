FROM python:3.13.0a1-alpine


# Copy the requirements and install
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Set destination for COPY
WORKDIR /app

# copy the application to working directory.
COPY . .

EXPOSE 8000

# Run
#CMD [ "flask", "--app", "my-app", "run", "--host=0.0.0.0" ]
CMD [ "gunicorn", "--bind=0.0.0.0:8000", "wsgi:app" ]
