# cpssd.net


This is an unoffical hub for CPSSD, because the real website is very static,
full of typos, inaccessible to any of us, and just generally dense and formal.

---

## Running

If you want to run the website locally make sure you have [Hugo][1] installed
and run
```
hugo server
```

[1]: https://gohugo.io

---

## Contributing

Feel free to submit pull requests, make issues, and edit anything and everything.

Anybody can add a post to the blog. Just create a new file in `content/blog/`,
probably prefix it with a year if its a recurring event or something. You can
just copy the definition at the top from another file.

If you are creating a top level file, make sure to add `type: 'root-page'` if
you want it to be in the menu

### Editing your info in `/students`

There is a file `data/students.yaml` containing all the links to your sites.
If you want to create another column you can do so in
`themes/cpssd/layouts/shortcodes/student-table.html`, but probably only do it
if there are a lot of people on some platform (say Twitter is no longer cool
and everybody switches to MySpace)

---

## Deployment

The website is automatically published to `gh-pages` by CircleCI, the branch
should not be edited by hand. To prevent Github complaining about `CNAME` file
in forks, the file is automatically added before CircleCI commits to `gh-pages`.
