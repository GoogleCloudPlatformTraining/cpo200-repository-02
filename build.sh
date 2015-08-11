docker build -t guestbook  .
docker tag guestbook gcr.io/jenkins-cpo200/guestbook
gcloud docker push gcr.io/jenkins-cpo200/guestbook


