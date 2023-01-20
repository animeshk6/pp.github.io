import os, time, threading
def delete():
  time.sleep(10)
  os.remove("nohup.out")
thread = threading.Thread(target=delete)
thread.start()
os.system("chromium-browser --no-sandbox")

.PHONY: run

run:
	install-pkg python
	python launch.py
