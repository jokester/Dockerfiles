artifactory @ alpine linux (w/ OpenJRE)

---------------------

Build with [Dockerfile](https://github.com/jokester/Dockerfiles/blob/master/jfrog-artifactory-oss/Dockerfile)

Tomcat runs on port 8081

Places you may want to mount a volume with: `/artifactory-data/`. Because `{data,logs,backup,etc}` get symlinked to `/artifactory-oss/`
(see https://www.jfrog.com/confluence/display/RTF/Running+with+Docker#RunningwithDocker-RunningArtifactoryOSSorPro )
