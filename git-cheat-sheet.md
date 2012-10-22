## Managing remotes

List remote-tracking branches:

    git branch -r

The -f flag fetches afterwards:

    git remote add username git://github.com/username/projectname.git -f
    git remote rm username

## Merging from remotes

The `--no-commit` option allows the commit message to be edited before
committing.  The `--no-ff` option generates a merge commit even if the merge
resolved as a fast-forward.

    git merge --no-ff --no-commit abcd1234

Commit message (example):

    Merge pull request #100 from @username into issue-100

    From: https://github.com/username/projectname/commit/abcd1234...

    Description...

    Thanks, @username!

Show merged commits and differences:

    git log --graph
    git diff HEAD~1 HEAD

The commit message after cleaning up (example)--

    Merge branch 'issue-100' into development: closes issue #100

    Description...

    Thanks again, @username.
