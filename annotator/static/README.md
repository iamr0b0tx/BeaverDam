Organization of JS files here
-----------------------------

| Filename             | Class        | Purpose                                                                                                                                                                                                                             |
| :--------            | :-----       | :-------                                                                                                                                                                                                                            |
| app.js               |              | Starts the app.                                                                                                                                                                                                                     |
| bounds.js            | Bounds       | Bounds indicates the position and dimensions of a rectangle. This file has a spec for Bounds objects and has functions for manupulating bounds.                                                                                     |
| datasources.js       | DataSources  | Functions for interacting with external data sources (URLs and JSON)                                                                                                                                                                |
| misc.js              | Misc         | Miscellaneous utulity functions. If a distinct category of functions pops up, we can move it to a new file.                                                                                                                         |
| player.js            | Player       | Player controller code. Binds together Thing and PlayerView.                                                                                                                                                                        |
| thing.js             | Thing        | Thing model. This is an object that sits there and does nothing. It des not know about any of the views. It cannot do anything on its own. However, when you change its keyframes, it will trigger an event that you can listen to. |
| views/               |              | Here lie the views. Views show things and maintain some internal state (a scrubber maintains its current position). They do not interact with anything other than sub-views, but they trigger events that you can listen to.        |
| views/keyframebar.js | Keyframebar  | Displays keyframes. Click a keyframe triggers an event.                                                                                                                                                                             |
| views/player.js      | PlayerView   | View for the entire player. It comes with a Keyframebar, a CreationRect, and has methods for adding Rects.                                                                                                                          |
| views/rect.js        | Rect         | A rectangle/box onscreen.                                                                                                                                                                                                           |
| views/rect.js        | CreationRect | A special rectangle/box that normally sits behind all the other rects. When it is dragged, it changes shape to form a new rect. When the drag is finished, it triggers and event and reverts to its initial state.                  |