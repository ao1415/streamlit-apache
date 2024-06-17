
pwd

exec /usr/local/bin/apachectl -DFOREGROUND "$@"

streamlit run main.py --server.port 8080
