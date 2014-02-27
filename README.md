
Page template
------

This is my project tempalte:

### Usage

Modify the snippet, load it in Bash:

```bash
function template {
  cp -r ~/repo/page-template $1
  cd $1
  rm -rf .git/
  git init
  git remote add origin git@github.com:jiyinyiyong/$1.git
}
```

suppose you are going to create project `demo`:

```bash
template demo
npm init # rewrite package.json
```

Development:

```bash
node-dev make.coffee dev
```

Compile CoffeeScript and push to npm:

```bash
coffee make.coffee build
npm publish
```