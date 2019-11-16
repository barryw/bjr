
#### Configuring

`JWT_EXPIRY_SECONDS` : Set to the number of seconds that a JWT should live. The default is 3600 seconds.

##### Authenticate

```bash
% curl -H "Content-type: application/json" -H "Accept: application/json" http://localhost:3000/authenticate -d '{"username": "admin", "password": "password123"}'

{"auth_token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NzAyOTU1ODJ9.DpxW3iNbZYRdHC-ymZeB2Gsu4A7rEp22Pp_JOq0ices","message":"","is_error":false}
```

##### Create a job

This command will create a job that echo's "Hello World" every minute. It's not very useful, but it does show how easy it is to schedule a job.

```bash
% curl -X POST -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NzAyOTU1ODJ9.DpxW3iNbZYRdHC-ymZeB2Gsu4A7rEp22Pp_JOq0ices" -H "Content-type: application/json" -H "Accept: application/json" http://localhost:3000/job_api -d '{"name": "My First Job", "command": "echo Hello World", "cron": "* * * * *"}'

{"message":"Job 1 created successfully.","is_error":false,"object":{"id":1,"name":"My First Job","cron":"* * * * *","enabled":true,"command":"echo Hello World","next_run":"2019-10-05T17:18:00.000Z","running":false,"created_at":"2019-10-05T17:17:13.000Z","updated_at":"2019-10-05T17:17:13.000Z","tags":[]},"object_type":"job","status_code":201}
```

##### Get the job's runs

Once the job has run, you'll start accumulating job runs that you can pull back to see whether they succeeded or failed.

```bash
curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NzAyOTU1ODJ9.DpxW3iNbZYRdHC-ymZeB2Gsu4A7rEp22Pp_JOq0ices" -H "Content-type: application/json" -H "Accept: application/json" http://localhost:3000/job_api/1/runs

{"message":"Runs for job 1","is_error":false,"object":[{"id":2118,"success":true,"return_code":0,"error_message":"","stdout":"Hello World\n","stderr":"","start_time":"2019-10-05T17:18:23.000Z","end_time":"2019-10-05T17:18:23.000Z","job_id":1,"created_at":"2019-10-05T17:18:23.000Z","updated_at":"2019-10-05T17:18:23.000Z"}],"object_type":"job_runs","status_code":200}
```
