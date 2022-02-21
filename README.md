**Proposed Environments**
I would propose to have three environments namely:
- Dev - normal development work, bug fixes, newly developed features is done and deployed here until the code is ready for the next stage of testing.
- Pre-Prod/ Staging - this is where QA happens, whatever has been developed and deployed and passed the dev stage, is further tested to ensure sanity, e.g the app can be exposed to a large database like the one in production to see the performance.
- Prod - This is the main Production where applications run and is available to end users.

**Branching Strategy for the envs**
I would have the following branches for the different environments:
- bugs, hotfixes and feature branches to be merged to dev branch for respective deployment to dev env.
- dev branch to be merged to pre-prod branch to deploy to pre-prod env.
- pre-prod to be merged to prod branch to deploy to prod env.