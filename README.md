Resources
=========

Rails Tutorials
---------------

There is [The Big Tutorial] (http://ruby.railstutorial.org/ruby-on-rails-tutorial-book) and a [little one] (http://ruby.railstutorial.org/ruby-on-rails-tutorial-book#sec-git_setup).

Documenting
-----------

This is a [markdown syntax guide] (http://daringfireball.net/projects/markdown/syntax) and a [guide on how to make proper git commit messages] (https://github.com/blog/926-shiny-new-commit-styles)

Website Planning
----------------

Here are some [website usability guidelines] (https://docs.google.com/viewer?url=http://www.usabilitynet.org/papers/useofguidelines.pdf) and some sketchy on the subject:

* design goals and benefits
* the conditions under which the guideline should be applied
* the precise nature of the proposed solution
* any procedure which must be followed to apply the guidelines

We also got your [basic usability stuff] (http://www.usabilitynet.org/management/basics.htm), some [usability standards] (https://docs.google.com/viewer?url=http://www.usabilitynet.org/trump/documents/Usability_standards.ppt.pdf), a [roundup of mockup tools] (http://speckyboy.com/2009/11/23/a-collection-of-useful-web-design-wireframing-resources/), and more [general usability resources] (http://www.usabilitynet.org/trump/index.htm)

Databases in Rails
------------------

Hey guess what? Rails can be used with different databases. It's all explained at this [rails adaptors] (https://gist.github.com/961978) site.

Gems in Rails
-------------

Every Rails3 project includes references to some gems for simplification and minification of must-have frameworks like javascript and css. You should know what this stuff does, along with anything else you might add to your project's ''Gemfile''. These Rails-supported frameworks listed in Gemfile are installed  with the 'bundle install' step of project setup. If you make css or javascript, or for that matter coffeescript and sass files, stick them into the 'assets/javascripts' or 'assets/stylesheets' subdirs of your project, magic things happen when you fire up your web server.

uglifier [minifies and compresses javascript] (https://github.com/lautis/uglifier). 

Sass-rails [simplifies and enhances CSS authoring] (https://github.com/lautis/uglifier) with some really cool features like what this [railscast] (http://railscasts.com/episodes/268-sass-basics) shows. You add the .scss extension to your CSS files to activate this. 

Coffee-rails uses coffeescript to express javascript in a simplified way, which is converted by Rails3 at runtime into real javascript. There is also a [realtime browser embedded interpreter] (http://coffeescript.org) at the author's website to construct coffeescript code online. You name your coffeescript files with the .coffee extension like this [railscast] (http://railscasts.com/episodes/267-coffeescript-basics?view=comments) illustrates.

jquery-rails is [jquery] (http://os.alfajango.com/rails-jquery-demo/) and I can't say much about it right now.


Git
---

###Using the Branch, Edit, Commit and Merge cycle for development

[The Big Tutorial] (http://ruby.railstutorial.org/ruby-on-rails-tutorial-book#sec-git_commands) talks about this. Basically, this is what you'll do when you want to make set of coherent changes to your code, a kind of mini-projects approach to incremental development that lets you see what you're doing as you're doing it. Without going mad.

But before you do anything, make sure Git knows about your editor. This is a one-time setup thing.
   * Do this with: `git config --global core.editor "vi -F"` for FreeBSD terminal development.

Now for the meat:

First you Branch a seperate, temporary version of your project to work on from the Main branch.
   * Do this with: `git checkout -b README-BRANCH`
   * Check with: `git branch`

Then you Edit changes to your code.
   * Do this with: `vi README.md` for example.
   * Check with: `git status`

Then you Commit each change you make back to your local Git repository.
   * Do this with: `git commit -a` 
   * Or use `git commit -a -m "my changes"` if you didn't setup your editor.
   * Check by looking at the terminal output of the command.

Keep doing the two Edit/Commit steps above until your changes are complete.

When done with it all, Merge your changes back into the Main Branch 
   * Do this with: `git checkout master`
   * `git merge README-BRANCH`
   * If you want to delete the temp branch do: `git branch -d README-BRANCH`
   * Check by looking at the terminal output of the command and `git branch`

Finally, Push your changes to Github
  * Do this with: `git push`

And maybe Deploy them to Heroku.
