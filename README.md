# BeaverDam
Video annotation tool for deep learning training labels

## Installation

Make sure `virutalenv` is installed on your computer. Search for OS specific instructions.

Clone the repository

```
cd BeaverDam
virtualenv -p python3 venv
. venv/bin/activate
pip3 install -r requirements.txt
```

#### Download Sample Database & Data
```
wget https://s3-us-west-2.amazonaws.com/beaverdam/db.sqlite3 -O db.sqlite3
wget https://s3-us-west-2.amazonaws.com/beaverdam/videos/test_vid2.mp4 -O annotator/static/videos/0.mp4
```

#### Export mturk Keys (only required for mturk module)

Replace the credentials below with your own
```
export AWS_ID="AKIAAAAYOURIDHERE"
export AWS_KEY="YOURmturkKEYhere5DyUrkm/81SRSMG+5174"
```
When ready for real turkers, edit `MTURK_SANDBOX` to `False` in `settings.py`.

It is recommended to use IAM keys with only mturk permissions instead of root key.

## Running the Server

`./run_server`
Then navigate to `localhost:5000/video/test_vid` in your browser.
