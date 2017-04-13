msp430_macosx
=============

MSP430 LaunchPad (MSP-EXP430G2) under Mac OS X with MSP430-GCC-OPENSOURCE.
http://www.ti.com/tool/msp430-gcc-opensource


~/.gitconfig
============
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
git config --global core.editor gvim
git config --global merge.tool vimdiff
git config --global color.ui true


GIT commands
============
$mkdir hello_world && cd hello_world
$git init # init new repo
$git clone
# $ git add
$ git add readme.txt
$git commit
$ git commit -m 'first commit'
$git push
$ git push origin master

ssh -T git@github.com # verify that SSH public key is installed

$ git status                            #статус
$ git add .                             #додавання всіх змін в репозиторій
$ git commit -m 'commit comment'        #коміт змін в репозиторій з коментарем
$ git push origin master                #додавання коміту із змінами в загальний репозиторій в гілку master
$ git pull origin master                #отримання комітів із змінами з загального репозиторію з гілки master
$ git reset --hard 'hash code'          #повертаємося на версію по хеш коду
$ git rm /www/public/index.html -r -f   #видалення вказаного файлу
$ git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short    #історія комітів з хеш кодом комітів

Right order of the commands
---------------------------
$ git status                    #переглядаємо зміни
$ git add .                     #додамо зміни
$ git status                    #змінені файли мають змінити колір на зелений
$ git commit -m 'test commit'   #робимо коміт
$ git pull origin master        #спочатку отримуємо зміни з репозиторію
$ git push origin master        #тепер надсилаємо наші зміни

User-related commands
---------------------
# Set new user
git config --local user.name "hello"
git config --local user.email "world@gmail.com"

git config user.name # See current user
git config --list    # See all variables

Git Help
========
Quick setup — if you’ve done this kind of thing before

…or create a new repository on the command line
-----------------------------------------------
echo "# msp430_macosx" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:h-yaroslav/msp430_macosx.git
git push -u origin master

…or push an existing repository from the command line
-----------------------------------------------------
git remote add origin git@github.com:h-yaroslav/msp430_macosx.git
git push -u origin master

