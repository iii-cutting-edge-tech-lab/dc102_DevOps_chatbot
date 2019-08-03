# 載入預設映像
FROM python:3.7

# 增加專案
ADD . /code
WORKDIR /code

# 安裝flask
RUN pip install update -y
RUN pip install flask

# 運行flask
ENTRYPOINT ["python"]
CMD python app.py
