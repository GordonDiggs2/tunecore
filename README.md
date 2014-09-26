## Tunecore programming exercise

We distribute many songs and albums to iTunes and need a search  interface for customer service.  Can you design and implement  a Rails3 app for a search interface for customer service to search our song database by any combination of song title, album title, and artist name?

Minimum Requirements

1. 500 songs, 100 albums, 10 artists
2. Basic unstyled interface
3. Return list of songs with album and artist info
4. Tests

Open ended question we can talk about when you’re here: What if we had 100 million songs.  How might you deal with this kind of search?

Feel free to  install gems. You should use bundler. Please upload the finished code somewhere that we can review it.

### Installation

```bash
$ bundle install
$ bundle exec rake db:create db:migrate db:seed
```

