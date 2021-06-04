# Simple demonstration of CircleCI's setup workflow

This repository demonstrates the core concept of CircleCI's setup workflow feature.

The most fundamental understanding for the setup workflow feature is that users can execute two configs in a single pipeline, i.e., one for the setup workflow/job, and the other for main workflows/jobs. While setup workflows/jobs need to be implemented in `.circleci/config.yml`, you can use _any arbitrary_ valid config for the main workflows/jobs.

In this demonstration, we generate `/tmp/another-config.yml` in the setup job, and then spool it for the main job. The execution of `another-config.yml` is triggered by calling [`POST /pipeline/continue`](https://circleci.com/docs/api/v2/#operation/continuePipeline) with `continuation-key` and `configuration` parameters conveyed as the request body encoded in JSON.

ccfffffddddOhhhhhhh
