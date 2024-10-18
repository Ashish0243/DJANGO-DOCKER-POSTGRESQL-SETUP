FROM python:"3.12"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /last

COPY Pipfile Pipfile.lock /last/
RUN pip install pipenv && pipenv install --system

COPY . /last/