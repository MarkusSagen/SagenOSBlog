
## Overview
This post will detail how to publish markdown notes from your Obsidian Vault to a static website using Quartz.

## What is Quartz

[Quartz](https://github.com/jackyzha0/quartz) is a tool to publish your collection of notes into a static website. It does this by exporting your notes from Obsidian and publishing them with the static site generator [[Hugo]]. 

Read more about quartz on their official website: https://quartz.jzhao.xyz/ 

## Setting Up Your Website

The instructions are (as of writing 2024-08-29) based on the instructions on the Quartz website: https://quartz.jzhao.xyz

Prerequisites: 
1. Create a Github account
2. Install `node` and `npm`
3. Install Obsidian and Create a Vault
#### 1. Install Quartz
::note Pre-requisite that you have `node`, `npm` and `npx` installed

```sh
git clone https://github.com/jackyzha0/quartz.git
cd quartz
npm i && npx quartz create
```

Remember where this path is! In step [[Publishing Obsidian Notes as a Website#3. Add Quartz to Your Project]], we will revisit this.

Copy the path to this directory with: 

```sh
pwd
```

#### 2. Create Repository

In Github create a new repository for your website

#### 3. Add Quartz to Your Project

In the Quartz directory (See previous step where this was located) include a new origin for the project

```sh
# Remove the previous origin
git remote rm origin  

# Change this to your GH repo
git remote add origin git@github.com:MarkusSagen/SagenOSBlog.git
```

You should now see the following 

```sh
❯ git remote -v                                                   
origin	git@github.com:MarkusSagen/SagenOSBlog.git (fetch)
origin	git@github.com:MarkusSagen/SagenOSBlog.git (push)
upstream	https://github.com/jackyzha0/quartz.git (fetch)
upstream	https://github.com/jackyzha0/quartz.git (push)
```

**Sync and Push** the current project with Quartz upstream

```sh
npx quartz sync --no-pull
```

This command will push your Quartz and your new changes to your Github repo.

For simplicity, my personal preference is to make an abstraction around these commands so that I don't need to remember what is required when in a project. For my blog, I have a [`justfile`](https://github.com/casey/just) that has the command `just sync`. Makes it less likely to forget the command and how they should interact in the future

#### Deployment

Based on: https://quartz.jzhao.xyz/hosting

In you Github repo: https://github.com/MarkusSagen/blog/settings/pages

**Change**:
- Settings -> Pages -> Build and Deployment Source to be `Github Actions`
- Below it, choose the link to create a new deployment configuration yaml file.

Once done, try to commit updates:

```sh
npx quartz sync
```

## Notes

If you liked this blog post, you may also like the following:
- [[Why Obsidian for Note-taking?]]