#!/bin/bash

while true
do
  curl -X POST -H "Content-Type: application/json" -d '{"title":"Random Title","content":"Random Content"}' http://<44.211.25.174>/wp-json/wp/v2/posts
  sleep 3600
done

