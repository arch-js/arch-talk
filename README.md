# arch-talk

These are the demos we showed at April 2015 London React Meetup.

## Slides

The slides can be found in a more accessible form
[on Slide share](http://www.slideshare.net/LondonReact/react-london-april).

## Getting started

Each of the demos is a separate Arch application. In each of the folders, run

```
$ npm install
$ arch-cli s
```

then you can play with the code and the UI should mostly update live.

## Demos

The demos are showing an evolution of a simple component into an API driven
application which is what Arch is primarily buit for. They roughly follow
the [Arch basic tutorial](https://github.com/redbadger/arch/blob/master/docs/02-basic-tutorial.md).

### Demo 1 - List with search

Basic list component with search using local state for the items and local
logic for the filtering.

### Demo 2 - List with search and search history

The same demo, now including search history component which record each of your
searches. This means the search query and the serch history need to be shared
between the to main components - each is read by one and written by the other. This
should demonstrate the basic use of app state and cursors.

### Demo 3 - Extracting search into a state observer

Continuing with the idea, we're now looking for more reusability and less application
logic in UI components themselves. The back-end concerns of the list component - tha data
and the filtering of it are now extracted into a state observer.

### Demo 4 - Switching the search provider

The final demo shows how this architecture achieves decoupling by switching the
search to use Github API with little modification to the UI component themselves, except
for catering for asynchronous operation by adding a `loading` flag, which is also used
to indicate loading to the user.
