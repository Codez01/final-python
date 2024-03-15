FROM python:3.7

# Set the working directory
WORKDIR /app

# Copy the Pipfile and Pipfile.lock
COPY Pipfile Pipfile.lock /app/

# Install pipenv and dependencies
RUN pip install pipenv && pipenv install --deploy --system

# Copy the rest of the code
COPY . /app/

# Expose to port 5000
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
