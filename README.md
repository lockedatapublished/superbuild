---
title: "Superbuild_README"
author: "Ellen Talbot"
date: "28/06/2018"
output: html_document
---

Workflow
--------

In order to clone the superbuild repository onto your computer you should run the following line in your terminal.

`git clone --recurse-submodules https://github.com/lockedatapublished/superbuild`  This is known as checking out a repository.

Pushing to superbuild causes your changes to go live to the website! If this isn't what you intend to do, please see the README files for the submodules blog and itsalocke within the superbuild for information on how to upload your changes without putting them out there for the world to see.

IF however, you are happy with your changes and you have the go ahead to publish from Steph *and* you've followed the instructions in the submodule README, by all means, follow the steps below!

------------------------------------------------------------------------

`cd` CD stands for change directory - put here the file path to Superbuild wherever you have it on your PC

`git pull` Make sure you have the latest version before you try and make changes

`git status` This is just good practise and should help you avoid issues down the line

`git add <file>` Look back at git status and check what other files and folders also have changes made to them. You don't want to push other peoples changes - they might not be quite finished! Put your file name in place!

OR

`git add .` If your's are the only changes you can use the full stop to add all

`git commit -m "add your comment here"` Add a lil comment to explain what you've been up to/what you're putting out into the big wide world.

`git push origin master` Finally push your changes and watch them appear like magic on the internet!

------------------------------------------------------------------------

## Workflow for processing PRs to submodules

1. Review changes, edit as needed, commit
2. On the PR page, click Review Changes, select Approve (or rejected and exit this workflow), and then Submit
3. Click the dropdown next to Merge and select Squash and Merge, then click Merge and confirm
4. Switch to git on your desktop (cloning Superbuild if needed)
5. If not already done, initialize the relevent submodule
6. Open the submodule and double-click Master to make it the active branch
7. Pull
8. Close the submodule
9. Stage and commit changes to submodule at Superbuild level
10. Push

------------------------------------------------------------------------

Troubleshooting
---------------

Okay first off. Ask Steph. DON'T get in a mess and start reverting and deleting willy nilly!

You can review the progress of your submission, and see any errors in the Hugo execution, here: https://app.netlify.com/sites/itsalocke/deploys
