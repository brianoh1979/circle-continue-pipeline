FROM circleci/python:3.9
RUN sudo pip install --no-cache pipenv poetry && sudo apt-get update && sudo apt-get install -y libgbm1
