echo "Starting up the sytem."
cd ./src/app_poker/
python -m flask --app app --debug run --host=0.0.0.0 --port=8080 