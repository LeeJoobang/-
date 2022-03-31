rebase merge : 합친 지점을 누구를 둘것인지를 결정함 이때 main을 두게 된다.

이점: 불필요한 커밋을 하지 않아도 된다.

단점: 현재 커밋 결과가 merge가 되어 나온 값인지는 확인이 어렵다.

빠르게 버그를 픽스할 경우는 내용을 굳이 남길 필요 없으니 rebase merge 시도해도 좋을 것 같다.

체크한 브랜치가 합체한 브랜치로 rebase 된다.



// 정리

git add . // 점을 사용하면 전체 파일이 올라간다.



```

```

Last login: Fri Mar 18 23:33:55 on console
[oh-my-zsh] Would you like to update? [Y/n] y
Updating Oh My Zsh
master

BREAKING CHANGES:


 - 6f10362 [copydir]

   The `copydir` plugin is deprecated. Instead of using `copydir`, use
   `copypath` which also supports copying the path of other files or directories
   specified.

 - aaaa554 [juju]

   Some aliases have been renamed to be consistent with the rest. Mainly,
   aliases for `juju show-` commands are renamed to `jsh*`. This also means that
   `jsh` and `jshc` have been renamed to `jssh` and `jsshc`. Have a look at the
   README for the complete alias changes.

 - 3075d0c [rails]

   We've updated the aliases that run `rake` to use `rails` instead because
   that's how they are run since Rails v5. The old `rake` aliases can still be
   run by using the `rk` prefix (e.g. the `rake test` alias has been changed
   from `rt` to `rkt`).

 - f96a900 [fzf]

   If both `fd` and `rg` are installed, default to using `fd`. This is the
   recommendation of the ripgrep author, and it's been found to be faster. If
   you want to force using `rg`, set the `FZF_DEFAULT_COMMAND` variable.

 - 564a606 [juju]

   `wjst` will no longer show storage in the status output. This is done for
   consistency with the `jst` and `jsts` aliases.

Features:

 - eaa6024 [autoenv]           Add path for Apple Silicon Homebrew (#10749)
 - 11a2314 [copypath]          Add plugin to copy file paths to clipboard (#7569)
 - 02b52a0 [fd]                Update `fd` completion to v8.3.2 (#10688)
 - f96a900 [fzf]               Default to using `fd` before `rg` (#10757)
 - f045810 [juju]              Add `jclean` function to destroy all registered controllers (#10426)
 - cdd2d6e [juju]              Introduce additional juju aliases (#10426)
 - 3343891 [kubectl]           Add aliases for job management (#9992)
 - d4c939d [kubectl]           Add aliases for replicasets (#10100)
 - 9946035 [lib]               Support auto title in foot terminal (#10735)
 - 98ed582 [rails]             Add `fmns` alias for `foreman start` (#9600)
 - 3075d0c [rails]             Run old rake aliases with `rails` (#9601)
 - c41f2e7 [rbw]               Add `rbwpw` function to copy passwords to the clipboard (#10639)
 - 5fad26c [ripgrep]           Update `rg` completion to v13.0.0 (#10687)
 - 93b348b [rvm]               Add `rb31` shortcut to use ruby 3.1 (#10745)
 - f0b5cb1 [terraform]         Add alias `tfo` for terraform output (#10667)

Bug fixes:

 - ef3f7c4                     Apply workaround patch for vcs_info (CVE-2021-45444)
 - 46195d3                     Fix svn branch output in themes: apple, gentoo, kolo, zhann (#10751)
 - 511ed65 [aws]               Allow empty prefix and suffix in prompt function (#10744)
 - 0da33ca [cli]               Disable GPG signing in `omz pr test` to avoid key prompt (#10677)
 - 9350e1f [coffee]            Fix completion bug on missing `coffee` command (#10759)
 - c4699f8 [dash]              Fix "no application knows how to open URL" error (#10767)
 - 3427da4 [dotenv]            Actually exit when .env syntax is broken
 - 7b70851 [emotty]            Show error on missing plugin dependencies (#9811)
 - c96fc23 [gpg-agent]         Suppress errors from `gpgconf` (#10769)
 - 97e6989 [helm]              Support completion for snap installs (#10723)
 - 4f0b680 [installer]         Fix `$HOME` setting if `getent` is not found (macOS)
 - c818048 [installer]         Fix removal of OMZ directory on failure
 - 9b883aa [installer]         Set `$HOME` if not defined (#10680)
 - 914b639 [installer]         Silence `git init`
 - 897fa09 [kubectl]           Fix arguments in `keti` alias to allow completion (#10669)
 - e934857 [kubectl]           Support completion for snap installs (#10727)
 - 6396dfb [kubectx]           Don't error on missing k8s context (#10675)
 - 201e9de [michelebologna]    Use `$HOST` variable instead of running `hostname` (#10724)
 - 40f4934 [rails]             Bundle more up-to-date zsh-completions completion version
 - 4a988c4 [updater]           Change remote using deprecated `git:` protocol (#10779)
 - dbd92a6 [updater]           Do not swallow 1 character in check for user input
 - 0b0af4d [updater]           Fix check for latest commit in local repository
 - 69e2937 [updater]           Fix input check on non-interactive runs
 - af0c3b6 [updater]           Prefix `cd` with `builtin` when it is aliased (#10753)
 - ff29836 [updater]           Timeout after 2s on available update check
 - b00b593 [vcs_info]          Don't patch VCS_INFO_formats if not found
 - 07b829c [vcs_info]          Quote % in relevant fields on all current Zsh releases
 - 1e615b7 [virtualenvwrapper] Only deactivate if virtual env is still present (#10671)

Performance:

 - 3459768 [dash]              Improve dash completion performance

Documentation:

 - 0f2715b                     Add Table of Contents to README (#10766)

Other changes:

 - 04b1b75                     Style: Remove VCS_INFO svn settings from themes that don't enable it
 - 6f10362 [copydir]           Refactor: Deprecate plugin in favor of `copypath`
 - aaaa554 [juju]              Refactor: Use the jsh prefix for `juju show-*` commands (#10426)
 - 564a606 [juju]              Style: Don't show storage status in `wjst` for consistency (#10426)
 - 28dc8c5 [michelebologna]    Refactor: Simplify and clean up code

You can see the changelog with `omz changelog`
         __                                     __
  ____  / /_     ____ ___  __  __   ____  _____/ /_
 / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
                        /____/

Hooray! Oh My Zsh has been updated!

To keep up with the latest news and updates, follow us on Twitter: @ohmyzsh
Want to get involved in the community? Join our Discord: Discord server
Get your Oh My Zsh swag at: Planet Argon Shop
 joobanglee  ~   master
❯
 joobanglee  ~   master
❯ git status
warning: '.Trash/' 디렉터리를 열 수 없습니다: Operation not permitted
현재 브랜치 master
추적하지 않는 파일:
  (커밋할 사항에 포함하려면 "git add <파일>..."을 사용하십시오)
	.CFUserTextEncoding
	.config/
	.docker/
	.eclipse/
	.gitconfig
	.gitflow_export
	.gitignore_global
	.hgignore_global
	.oh-my-zsh/
	.ssh/
	.stCommitMsg
	.swiftpm/
	.vim/
	.viminfo
	".zcompdump-Joobang\354\235\230 MacBook\302\240Pro-5.8"
	.zsh_history
	.zsh_sessions/
	.zshrc
	Applications/
	Desktop/
	Documents/
	Downloads/
	Library/
	Masters_Cocoa_2021/
	Movies/
	Music/
	Pictures/
	Public/
	VirtualBox VMs/
	fonts/

커밋할 사항을 추가하지 않았지만 추적하지 않는 파일이 있습니다 (추적하려면 "git
add"를 사용하십시오)
 joobanglee  ~   master
++++++++++++++++++++++++++++++++++++++++++++++++++++❯ pwd
/Users/joobanglee
 joobanglee  ~   master
+++++++++++++++++++++++++++++++++++++++++++++++++++++❯ rm -rf .git
 joobanglee  ~
❯ ls
Applications       Downloads          Movies             Public
Desktop            Library            Music              VirtualBox VMs
Documents          Masters_Cocoa_2021 Pictures           fonts
 joobanglee  ~
/Users/joobanglee/Desktop/01_LeeJoobang/002_0\ 코드스쿼드/002_2코드스\ 쿼드\ 마스터즈/0002\ iOS\ 클래스/PhotoAlbumApp/PhotoAlbumApp B
zsh: permission denied: /Users/joobanglee/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
 ✘ joobanglee  ~
❯
 ✘ joobanglee  ~
❯
 ✘ joobanglee  ~
❯
 ✘ joobanglee  ~
❯ ls
Applications       Downloads          Movies             Public
Desktop            Library            Music              VirtualBox VMs
Documents          Masters_Cocoa_2021 Pictures           fonts
 joobanglee  ~
❯ cd Desktop/01_LeeJoobang/002_0\ 코드스쿼드/002_2코드스쿼드\ 마스터즈/0002\ iOS\ 클래스/PhotoAlbumApp/PhotoAlbumApp
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git commit
현재 브랜치 develop
커밋할 사항 없음, 작업 폴더 깨끗함
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++❯ touch helloworld
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ ld
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ ls
PhotoAlbumApp           PhotoAlbumApp.xcodeproj helloworld
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git status
현재 브랜치 develop
추적하지 않는 파일:
  (커밋할 사항에 포함하려면 "git add <파일>..."을 사용하십시오)
	helloworld

커밋할 사항을 추가하지 않았지만 추적하지 않는 파일이 있습니다 (추적하려면 "git
add"를 사용하십시오)
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git commit
현재 브랜치 develop
추적하지 않는 파일:
  (커밋할 사항에 포함하려면 "git add <파일>..."을 사용하십시오)
	helloworld

커밋할 사항을 추가하지 않았지만 추적하지 않는 파일이 있습니다 (추적하려면 "git
add"를 사용하십시오)
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git add helloworld
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop ✚
❯ git status
현재 브랜치 develop
커밋할 변경 사항:
  (use "git restore --staged <file>..." to unstage)
	새 파일:       helloworld

 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop ✚
❯ git commit
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop ✚
❯ git commit -m "add test File: Helloworld"
[develop 077cd0f] add test File: Helloworld
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 PhotoAlbumApp/helloworld
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push
fatal: 현재 브랜치 develop에 업스트림 브랜치가 없습니다.
현재 브랜치를 푸시하고 해당 리모트를 업스트림으로 지정하려면
다음과 같이 하십시오

    git push --set-upstream origin develop

 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': hii5074@gmail.com
Password for 'https://hii5074@gmail.com@github.com':
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': hii5074@gmail.com
Password for 'https://hii5074@gmail.com@github.com':
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': hii5074@gmail.com
Password for 'https://hii5074@gmail.com@github.com':
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote -v
origin	https://github.com/LeeJoobang/swift-photos-10.git (fetch)
origin	https://github.com/LeeJoobang/swift-photos-10.git (push)
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote remove origin
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote add origin git@github.com:LeeJoobang/swift-photos-10.git
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote -v
origin	git@github.com:LeeJoobang/swift-photos-10.git (fetch)
origin	git@github.com:LeeJoobang/swift-photos-10.git (push)
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
The authenticity of host 'github.com (64:ff9b::344e:e76c)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? y
Please type 'yes', 'no' or the fingerprint: yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: 리모트 저장소에서 읽을 수 없습니다

올바른 접근 권한이 있는지, 그리고 저장소가 있는지
확인하십시오.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
git@github.com: Permission denied (publickey).
fatal: 리모트 저장소에서 읽을 수 없습니다

올바른 접근 권한이 있는지, 그리고 저장소가 있는지
확인하십시오.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote remove origin
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote add origin https://github.com/LeeJoobang/swift-photos-10.git
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': hii5074@gmail.com
Password for 'https://hii5074@gmail.com@github.com':

remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': hii5074@gmail.com
Password for 'https://hii5074@gmail.com@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ >....
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
The authenticity of host 'github.com (64:ff9b::344e:e76c)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? y
Please type 'yes', 'no' or the fingerprint: yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: 리모트 저장소에서 읽을 수 없습니다

올바른 접근 권한이 있는지, 그리고 저장소가 있는지
확인하십시오.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
git@github.com: Permission denied (publickey).
fatal: 리모트 저장소에서 읽을 수 없습니다

올바른 접근 권한이 있는지, 그리고 저장소가 있는지
확인하십시오.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote remove origin
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote add origin https://github.com/LeeJoobang/swift-photos-10.git
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': hii5074@gmail.com
Password for 'https://hii5074@gmail.com@github.com':

remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': hii5074@gmail.com
Password for 'https://hii5074@gmail.com@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop

 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': LeeJoobang
Password for 'https://LeeJoobang@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': LeeJoobang
Password for 'https://LeeJoobang@github.com':

remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/LeeJoobang/swift-photos-10.git/'
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push -u origin develop
Username for 'https://github.com': LeeJoobang
Password for 'https://LeeJoobang@github.com':
오브젝트 나열하는 중: 6, 완료.
오브젝트 개수 세는 중: 100% (6/6), 완료.
Delta compression using up to 8 threads
오브젝트 압축하는 중: 100% (3/3), 완료.
오브젝트 쓰는 중: 100% (4/4), 369 bytes | 369.00 KiB/s, 완료.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/LeeJoobang/swift-photos-10.git
   50a5632..077cd0f  develop -> develop
'develop' 브랜치가 리모트의 'develop' 브랜치를 ('origin'에서) 따라가도록 설정되었습니다.
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯

cmd + k : 리셋

git push --force // 매우 조심 강제로 로컬 히스토리를 원격(github)에 있는 것을 덮어 씌운다.

git reset --hard // 커밋으로 변경사항을 되돌리는데, 이전 사항은 날리게 된다.

git reset --soft // 커밋을 하기 이전 상태로 되돌리는 것

--> 

cd .. 한번 뒤로가기g



git reset --hard HEAD~ 한칸 뒤롷

git checkout -b test: test라는 브랜치를 생성

읽을 수 없을 때 권한아 없거나, 잘못된 저장소에서 가져오는 것은 아닐까?

 git remote add upstream : 주소 이름 변수 등록

 git remoter remove upstream : 주소 이름 변수 등록 삭제

LeeJoobang / swift-photoframe : origin

codesquad-members-2022 / swift-photoframe : upstream



```
❯ clear
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git reset --hard 50a56328f42d2428d966a76fcf09f64822ce65af
HEAD의 현재 위치는 50a5632입니다 [Update] Xcode 파일 생성
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 commit 50a56328f42d2428d966a76fcf09f64822ce65af (HEAD -> develop, origin/develop, main)
Author: LeeJoobang <hii5074@gmail.com>
Date:   Tue Mar 22 10:43:07 2022 +0900

    [Update] Xcode 파일 생성

commit 22f6a964976afae7d6218cd5e83132e77dc99d13 (origin/main)
Author: Jung Kim <godrm77@gmail.com>
Date:   Sat Mar 19 22:39:02 2022 +0900

    Initial commit
...skipping...
마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push
To https://github.com/LeeJoobang/swift-photos-10.git
 ! [rejected]        develop -> develop (non-fast-forward)
error: 레퍼런스를 'https://github.com/LeeJoobang/swift-photos-10.git'에 푸시하는데 실패했습니다
힌트: 현재 브랜치의 끝이 리모트 브랜치보다 뒤에 있으므로 업데이트가
힌트: 거부되었습니다. 푸시하기 전에 ('git pull ...' 등 명령으로) 리모트
힌트: 변경 사항을 포함하십시오.
힌트: 자세한 정보는 'git push --help'의 "Note about fast-forwards' 부분을
힌트: 참고하십시오.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git push --force
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/LeeJoobang/swift-photos-10.git
 + 077cd0f...50a5632 develop -> develop (forced update)
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote add origin https://github
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote add origin https://github.com/codesquad-members-2022/swift-photos-10.git
error: origin 리모트가 이미 있습니다.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote list
error: 알 수 없는 하위 명령: list
사용법: git remote [-v | --verbose]
  또는: git remote add [-t <브랜치>] [-m <master>] [-f] [--tags | --no-tags] [--mirror=<fetch|push>] <이름> <url>
  또는: git remote rename <옛이름> <새이름>
  또는: git remote remove <이름>
  또는: git remote set-head <이름> (-a | --auto | -d | --delete | <브랜치>)
  또는: git remote [-v | --verbose] show [-n] <이름>
  또는: git remote prune [-n | --dry-run] <이름>
  또는: git remote [-v | --verbose] update [-p | --prune] [(<그룹> | <리모트>)...]
  또는: git remote set-branches [--add] <이름> <브랜치>...
  또는: git remote get-url [--push] [--all] <이름>
  또는: git remote set-url [--push] <이름> <새url> [<옛url>]
  또는: git remote set-url --add <이름> <새url>
  또는: git remote set-url --delete <이름> <url>

    -v, --verbose         자세히 표시합니다 (하위 명령 앞에 와야 합니다)

 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote -v
origin	https://github.com/LeeJoobang/swift-photos-10.git (fetch)
origin	https://github.com/LeeJoobang/swift-photos-10.git (push)
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote add upstream https://github.com/codesquad-members-2022/swift-photos-10.git
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git remote -v
origin	https://github.com/LeeJoobang/swift-photos-10.git (fetch)
origin	https://github.com/LeeJoobang/swift-photos-10.git (push)
upstream	https://github.com/codesquad-members-2022/swift-photos-10.git (fetch)
upstream	https://github.com/codesquad-members-2022/swift-photos-10.git (push)
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   develop
❯ git checkout main
'main' 브랜치로 전환합니다
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git checkout -b joobang
새로 만든 'joobang' 브랜치로 전환합니다
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   joobang
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   joobang
❯ git checkout main
'main' 브랜치로 전환합니다
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git reset --hard
HEAD의 현재 위치는 50a5632입니다 [Update] Xcode 파일 생성
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git reset --hard 50a56328f42d2428d966a76fcf09f64822ce65af
HEAD의 현재 위치는 50a5632입니다 [Update] Xcode 파일 생성
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp   main
❯ git reset --hard 22f6a964976afae7d6218cd5e83132e77dc99d13
HEAD의 현재 위치는 22f6a96입니다 Initial commit
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
❯ git log
fatal: 현재 작업 디렉터리를 읽을 수 없습니다: No such file or directory
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
❯ git log
fatal: 현재 작업 디렉터리를 읽을 수 없습니다: No such file or directory
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
❯ git log
fatal: 현재 작업 디렉터리를 읽을 수 없습니다: No such file or directory
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
❯ git init
fatal: 현재 작업 디렉터리를 가져올 수 없습니다: No such file or directory
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
❯ ls
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
❯ git clone https://github.com/LeeJoobang/swift-photos-10.git
fatal: 작업 폴더를('swift-photos-10') 만들 수 없습니다: No such file or directory
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp/PhotoAlbumApp
❯ cd ..
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   main
❯ ls
README.md
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   main
❯ cd ..
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스
❯ cd ..
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈
❯ ls
0000 자료                    0003 Udemy iOS 강의
0001 CS10                      0004 JK강의
0002 iOS 클래스
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈
❯ cd 0002\ iOS\ 클래스/PhotoAlbumApp/
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   main
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   main
❯ git checkout develop
'develop' 브랜치로 전환합니다
브랜치가 'origin/develop'에 맞게 업데이트된 상태입니다.
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   develop
commit 22f6a964976afae7d6218cd5e83132e77dc99d13 (HEAD -> main, origin/main)
Author: Jung Kim <godrm77@gmail.com>
Date:   Sat Mar 19 22:39:02 2022 +0900

    Initial commit
...skipping...
❯ ls
PhotoAlbumApp README.md
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   develop
❯ git pull upstream develop
remote: Enumerating objects: 31, done.
remote: Counting objects: 100% (31/31), done.
remote: Compressing objects: 100% (23/23), done.
remote: Total 30 (delta 2), reused 29 (delta 2), pack-reused 0
오브젝트 묶음 푸는 중: 100% (30/30), 14.26 KiB | 2.85 MiB/s, 완료.
https://github.com/codesquad-members-2022/swift-photos-10 URL에서
 * branch            develop    -> FETCH_HEAD
 * [새로운 브랜치]   develop    -> upstream/develop
힌트: You have divergent branches and need to specify how to reconcile them.
힌트: You can do so by running one of the following commands sometime before
힌트: your next pull:
힌트:
힌트:   git config pull.rebase false  # merge (the default strategy)
힌트:   git config pull.rebase true   # rebase
힌트:   git config pull.ff only       # fast-forward only
힌트:
힌트: You can replace "git config" with "git config --global" to set a default
힌트: preference for all repositories. You can also pass --rebase, --no-rebase,
힌트: or --ff-only on the command line to override the configured default per
힌트: invocation.
fatal: Need to specify how to reconcile divergent branches.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   develop
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   develop
❯ git checkout main
'main' 브랜치로 전환합니다
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   main
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   main
❯ git checkout -b test
새로 만든 'test' 브랜치로 전환합니다
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git pull
현재 브랜치에 추적 정보가 없습니다.
어떤 브랜치를 대상으로 병합할지 지정하십시오.
자세한 정보는 git-pull(1) 페이지를 참고하십시오.

    git pull <리모트> <브랜치>

이 브랜치에 대한 추적 정보를 설정하려면 다음과 같이 할 수 있습니다:

    git branch --set-upstream-to=<리모트>/<브랜치> test

 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git pul remote develop
git: 'pul'은(는) 깃 명령이 아닙니다. 'git --help'를 참고하십시오.

가장 비슷한 명령은
	pull
	push
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git pull remote develop
fatal: 'remote' does not appear to be a git repository
fatal: 리모트 저장소에서 읽을 수 없습니다

올바른 접근 권한이 있는지, 그리고 저장소가 있는지
확인하십시오.
 ✘ joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git remote -v
origin	https://github.com/LeeJoobang/swift-photos-10.git (fetch)
origin	https://github.com/LeeJoobang/swift-photos-10.git (push)
upstream	https://github.com/codesquad-members-2022/swift-photos-10.git (fetch)
upstream	https://github.com/codesquad-members-2022/swift-photos-10.git (push)
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git --help
사용법: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           [--super-prefix=<path>] [--config-env=<name>=<envvar>]
           <command> [<args>]

다음은 여러가지 상황에서 자주 사용하는 깃 명령입니다:

작업 공간 시작 (참고: git help tutorial)
   clone             저장소를 복제해 새 디렉터리로 가져옵니다
   init              빈 깃 저장소를 만들거나 기존 저장소를 다시 초기화합니다

변경 사항에 대한 작업 (참고: git help everyday)
   add               파일 내용을 인덱스에 추가합니다
   mv                파일, 디렉터리, 심볼릭 링크를 옮기거나 이름을 바꿉니다
   restore           Restore working tree files
   rm                파일을 작업 폴더에서 제거하고 인덱스에서도 제거합니다
   sparse-checkout   Initialize and modify the sparse-checkout

커밋 내역과 상태 보기 (참고: git help revisions)
   bisect            이진 탐색으로 버그를 만들어낸 커밋을 찾습니다
   diff              커밋과 커밋 사이, 커밋과 작업 내용 사이 등의 바뀐 점을 봅니다
   grep              패턴과 일치하는 줄을 표시합니다
   log               커밋 기록을 표시합니다
   show              여러가지 종류의 오브젝트를 표시합니다
   status            작업 폴더 상태를 표시합니다

커밋 내역을 키우고, 표시하고, 조작하기
   branch            브랜치를 만들거나, 삭제하거나, 목록을 출력합니다
   commit            바뀐 사항을 저장소에 기록합니다
   merge             여러 개의 개발 내역을 하나로 합칩니다
   rebase            커밋을 다른 베이스 끝의 최상위에서 적용합니다
   reset             현재 HEAD를 지정한 상태로 재설정화합니다
   switch            Switch branches
   tag               태그를 만들거나, 표시하거나, 삭제하거나, GPG 서명을 검증합니다

협동 작업 (참고: git help workflows)
   fetch             다른 저장소에서 오브젝트와 레퍼런스를 다운로드합니다
   pull              다른 저장소 또는 다른 로컬 브랜치에서 가져오거나 통합합니다
   push              원격 레퍼런스 및 그와 관련된 오브젝트를 업데이트합니다

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.
See 'git help git' for an overview of the system.
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git pull --help
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git pull upstream develop
https://github.com/codesquad-members-2022/swift-photos-10 URL에서
 * branch            develop    -> FETCH_HEAD
업데이트 중 22f6a96..4a0ad3e
Fast-forward
 .../PhotoAlbumApp.xcodeproj/project.pbxproj   | 365 +++++++++++++++++
 .../contents.xcworkspacedata                  |   7 +
 .../xcshareddata/IDEWorkspaceChecks.plist     |   8 +
 .../UserInterfaceState.xcuserstate            | Bin 0 -> 11229 bytes
 .../xcschemes/xcschememanagement.plist        |  14 +
 PhotoAlbumApp/PhotoAlbumApp/AppDelegate.swift |  36 ++
 .../AccentColor.colorset/Contents.json        |  11 +
 .../AppIcon.appiconset/Contents.json          |  98 +++++
 .../Assets.xcassets/Contents.json             |   6 +
 .../Base.lproj/LaunchScreen.storyboard        |  25 ++
 .../PhotoAlbumApp/Base.lproj/Main.storyboard  |  24 ++
 PhotoAlbumApp/PhotoAlbumApp/Info.plist        |  25 ++
 .../PhotoAlbumApp/SceneDelegate.swift         |  52 +++
 .../PhotoAlbumApp/ViewController.swift        |  19 +
 14 files changed, 690 insertions(+)
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp.xcodeproj/project.pbxproj
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp.xcodeproj/project.xcworkspace/contents.xcworkspacedata
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp.xcodeproj/project.xcworkspace/xcuserdata/joobanglee.xcuserdatad/UserInterfaceState.xcuserstate
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp.xcodeproj/xcuserdata/joobanglee.xcuserdatad/xcschemes/xcschememanagement.plist
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/AppDelegate.swift
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/Assets.xcassets/AccentColor.colorset/Contents.json
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/Assets.xcassets/AppIcon.appiconset/Contents.json
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/Assets.xcassets/Contents.json
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/Base.lproj/LaunchScreen.storyboard
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/Base.lproj/Main.storyboard
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/Info.plist
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/SceneDelegate.swift
 create mode 100644 PhotoAlbumApp/PhotoAlbumApp/ViewController.swift
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯ git log
 joobanglee  ~/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/PhotoAlbumApp   test
❯
```

github - '.' 버튼 

그냥 pull을 할 경우 fetch & merge 

git pull --rebase upstream develop

