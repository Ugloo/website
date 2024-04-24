This is a project to build the official _WebSite_ for **Ugloo**.  


Click the button below to start a new development environment based upon **main** `git` branch:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/ugloo/website)

To build and serve the website, execute the following command.

```
hugo server -D --disableFastRender --source website --baseURL <theBaseURL of your GitPod instance> --buildDrafts --cleanDestinationDir --appendPort=false
```