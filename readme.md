
# grunt page-maker template

This is my new template with Grunt and Bower.  
I make it for genarating Webkit based pages.  

#### Usage

`git clone` this repo into `~/.grunt-init/page/`,  
then you can use `grunt-init page` in an empty directory,  
notice that you need `grunt-init`, `doodle` and `grunt`.  

After that, enter the project directory,  
write down the configs and dependencies, run:  

```bash
npm install
bower install
grunt dev
```

My pages use Nginx as default server.  
The page reloads according to the signal of `doodle`.  