### Test for Continuous Integration

The `build.sh` conditionally sleeps and fails based on the `TRAVIS_JOB_NUMBER`.
The first job build.sh passes, and the second build takes longer to run and fails.

The problem is that the deploy happens anyway.
