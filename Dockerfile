
FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y

# I fixed the typo in the next line, changing "requeriments.txt" to "requirements.txt"
COPY requirements.txt /requirements.txt

# There is no need to use "cd /" with Docker, so I removed this line

# I combined the two pip install commands into a single line and moved it after copying the requirements file
RUN pip install -U pip && pip install -U -r requirements.txt

WORKDIR /app

COPY . .

CMD ["python", "bot.py"]
