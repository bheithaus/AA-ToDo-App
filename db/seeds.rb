# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = Project.create!([
  {title: "Build a Bridge", description: "From SF to Tokyo, it will be the largest bridge ever" },
  {title: "Break a boulder into sand", description: "We need this sand for our beach, so you figure it out!" },
  {title: "Add bootstrap to this site", description: "Get more familiar with CSS by using a great framework built by front-end professionals" }
  ])

projects[0].items.create!([
    {title: "map ocean floor", description: "We will need to find the most efficient route, so determine the depth and structural quality of the ocean floor in the area of our bridge path", complete: false },
    {title: "determine route", description: "Find ideal route", complete: false },
    {title: "dig", description: "excavate floor for pylons", complete: false },
    {title: "dig", description: "dig", complete: false },
    {title: "chop", description: "Get to building!", complete: false }
  ])
  
projects[1].items.create!([
    {title: "move boulder to work location", description: "use wheels or rollers, please", complete: false },
    {title: "hire breakers", description: "interview at least 20 people for 2 positions", complete: false },
    {title: "get tools", description: "required tools: 20 pickaxes, 1 manual pebble grinder", complete: false },
    {title: "dig", description: "dig", complete: false },
    {title: "chop", description: "chop", complete: false }
  ])

projects[2].items.create!([
    {title: "finish functionality first", description: "use wheels or rollers, please", complete: false },
    {title: "add rest of tasks", description: "thanks", complete: false }
  ])

  ## title, description
  
  ## title, description, complete