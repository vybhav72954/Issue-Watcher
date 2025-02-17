
# action will be run in python3 container
FROM python:3
# copying requirements.txt and install the action dependencies
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
# script.py is the file that will contain the codes that we want to run for this action.
COPY main.py /main.py
# we will just run our script.py as our docker entrypoint by python script.py
CMD ["python", "/main.py"]