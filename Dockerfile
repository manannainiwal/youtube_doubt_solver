FROM python:3.10
WORKDIR youtube_doubt_solver
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8501
CMD ["streamlit", "run", "frontend.py", "--server.port=8501", "--server.address=0.0.0.0"]