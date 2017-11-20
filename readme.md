A mavenlink_gem sandbox, with various examples.

It uses the [Mavenlink Gem](https://github.com/mavenlink/mavenlink_gem), which has to be compiled before use. 


```
Clone their repo
Run gem build {cloned repo directory}
gem install {built .gem file}
```


It also uses awesome_print, and dotenv.

Make sure you make a '.end' file in the root directory. Should include only the following

```oauthToken='your auth token here'```

Tons of comments inline on the main file, which is what you run. 

Each example function has a quick awesome print at the end of it, to spit out each part of the returned json.

To run a specific line, uncomment it and its awesome print line, and watch the pretty colors in terminal. 

```ruby main.rb```