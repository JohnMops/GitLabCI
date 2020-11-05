Sample GO server with GitLabCI config

1. Builds an image and runs it on the runner
2. Tests the server by curling one of the paths
3. Pushes the image to your docker repo (can be configured with a var)
4. Deploys the image on the runner 

- Deploy runs only on a merge request to master
- Build and test are running against a "stage" branch

This is an example of a GitLabCI with a GO server that i have built.
