# caps-support

## What?
  * reads `config/application.yml`'s STORAGE and logs file system events to a directory `log/fs_watcher`

## How?

`cd [app_dir]`

```
git clone git@github.com:DFTi/caps-support.git
cd caps_support
npm install
export PATH=./node_modules/.bin:$PATH
coffee main.coffee
```
