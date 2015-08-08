docker build -t guestbook  .
docker tag guestbook gcr.io/jenkins-cpo200-rsk/guestbook
gcloud docker push gcr.io/jenkins-cpo200-rsk/guestbook


