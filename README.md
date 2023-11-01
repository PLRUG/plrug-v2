<h1 align='center'>PLRUG (Polish Ruby User Group)</h1>
<p align='center'>
  <b>Your future is created by what you do today, not tomorrow.</b> <br/>
  <b>Don't limit your challenges. Challenge your limits.</b>
</p>

<p align='center'>
  <a href=''>
    <img alt="Made with ruby" title="Ruby" 
      src="https://forthebadge.com/images/badges/made-with-ruby.svg" height="35">
  </a>

  <a href=''>
    <img alt="Built with love" title="Love" 
      src="https://forthebadge.com/images/badges/built-with-love.svg" height="35">
  </a>

  <a href=''>
    <img alt="Works every time" title="Works" 
      src="https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg" height="35">    
  </a>
</p>

## Table of contents
- [Introduction](#introduction)
- [How to use](#how-to-use)
- [Git flow](#git-flow)
- [See Also](#see-also)

## Introduction
[![Ruby](https://img.shields.io/badge/ruby-v2.7%2B-blue.svg)](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-7-1-released/)
[![Rails](https://img.shields.io/badge/rails-v7.0%2B-blue.svg)](https://guides.rubyonrails.org/v7.0.3.7/)
[![Code Style](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)
[![Platform](https://img.shields.io/badge/platform-linux%20%7C%20windows%20%7C%20mac-D0547F.svg)]()

Ruby on Poland is a community based project for ruby developers and intusiasths

## How To Use
The PLRUG requires:
- [Ruby v2.7.3](https://ruby-lang.org/en/)
- [Bundler v2.2.9](https://bundler.io/)

### Run project dependencies via Docker Compose
Install [Docker Compose](https://docs.docker.com/compose/install/#install-compose).

Start dependencies (must let running in separate terminal):
```sh
$ make up
```

Add the `master.key` file to config folder. The content that need to be inserted in this 
file can be obtained with the **backend leader**.

Install and prepare gems:
```sh
$ make install
$ make dbrenew
```

### Testing
```sh
$ make test
```

## Git flow
We use GitFlow. GitFlow is a branching model for Git, created by Vicent Driessen. 
It has attracted a lot of attention because it is very well suited to collaboration and
scaling the development team. [See more]()

The names of our branches follow the pattern: *feature/story*-**story-**. See the **story id ** in the Trello Board

## See Also
- [Rails Engines](https://github.com/taskrabbit/rails_engines_example#rails-engines) - Rails Engine Apps Based
- [CBRA](https://cbra.info/) - Component-Based Rails Applications (Your Future)
- [Wiki](https://github.com/PLRUG/plrug-v2/wiki) - PLRUG project Wiki
---
> [plrug.pl] (https://plrug.pl) &nbsp;&middot;&nbsp;
> Github [@RenatoRosaFranco](https://github.com/RenatoRosaFranco)
