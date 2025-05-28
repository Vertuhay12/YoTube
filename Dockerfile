FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN apt update && apt install -y ffmpeg && pip install --no-cache-dir -r requirements.txt

COPY bot.py .
COPY youtube_cookies.txt .

CMD ["python", "bot.py"]