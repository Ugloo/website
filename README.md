This is a project to build the official _WebSite_ for **Ugloo** company.  

`Ugloo` is a `AWS S3` compatible **object storage** that is **distributed** over a modified `BitTorrent` protocol, patented and named `DeepTorrent`.


Click the button below to start a new development environment based upon **main** `git` branch:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/ugloo/website)

To build and serve the website, execute the following command.

```
hugo server -D --disableFastRender --source website --baseURL <theBaseURL of your GitPod instance> --buildDrafts --cleanDestinationDir --appendPort=false
```

# Few instructions to maintain the WebSite

Maintaining and upgrading the WebSite is an Infinite Loop.  
You may track issues and enhancements right here.

## How-to deploy the WebSite?

The https://www.ugloo.fr website is deployed by a `Github action` to `Github Pages` from the `main` branch.  
The HTTPs certificate is automatically generated, thanks to `Github Pages` and `Let's Encrypt`.

## How-to add a new page to EVENTS, FEATURES or POSTS sections?

1. Simply go into the `content/[events|features|posts]` directory
2. Duplicate the dir of an already existing page
3. Modify your duplicated directory

> :bulb: **Tips:**
> - the name of the directory will be used as the page _slug_ (you can override this).
> - you can add pics to this page by directly adding them into the directory
> - :warning: don't forget to update the whole metadata part of the `index.md` file. Especially the **date**.
> - **homepage** summary and **section** page list are going to be automatically upgraded

## How-to upgrade the website look-and-feel?

Layout is managed by `html` files in the layout directory.

> :bulb: **Tip:** There is another layout section in the `theme` directory. The one in the `/` dir is **overriding** but isn't **replacing** it.

Style is managed by `assets/sass` files, embedding `Bootstrap` genuine styles.

## Extra docs

Hugo templating doc: https://gohugo.io/documentation/
Bootstrap doc: https://getbootstrap.com/docs/3.4/javascript/