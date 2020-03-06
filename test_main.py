from main import app

def test_index():
  res = app.test_client().get('/')

  assert res.status_code == 200
  assert res.data == b'Hello Index'

def test_world():
  res = app.test_client().get('/world')

  assert res.status_code == 200
  assert res.data == b'Hello World'
