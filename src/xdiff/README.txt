The files in this directory come from the xdiff implementation in git.
You can find it here: https://github.com/git/git/tree/master/xdiff
The files were last updated March 17, 2023 from git release v.2.40.0

This is originally based on libxdiff, which can be found here:
http://www.xmailserver.org/xdiff-lib.html

The git version was used because it has been maintained and improved.
And since it's part of git it is expected to be reliable.

The code is distributed under the GNU LGPL license.  It is included in the
COPYING file.

Changes in these files were made to avoid compiler warnings.

The /* */ comments are kept to make syncing to a newer version easier, do not
change them to // comments!

The first work for including xdiff in Vim was done by Christian Brabandt.
