# Metadata Service 

1) POST to create an entry in the database

```sh
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"group":"sunitparekh","name":"city","value":"Pune"}' \
  http://localhost:8080/metadata
```

2) GET an entry posted in step 1

```
curl http://localhost:8080/metadata/{id-received-in-post-response}
```


# files chanaged for connecting to actual mongodb instance
1) run with embedded db 
    mvn spring-boot:run 

2) connect to database
    mvn spring-boot:run -Dspring-boot.run.profiles=local
    java -jar metadata-service.jar
