
FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y

COPY requirements.txt /requirements.txt

# Removed the unnecessary "cd /" command

# Combined the two pip install commands into a single line and moved it after copying the requirements file
# I fixed the typo in the next line, changing "requeriments.txt" to "requirements.txt"
RUN pip install -U pip && pip install -U -r requirements.txt

WORKDIR /app

COPY . .

CMD ["python", "bot.py"]
