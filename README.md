# Homebrew tap for Jeliya

Install the Jeliya daemon (`jeliyad`):

```sh
brew install kortiene/jeliya/jeliya
```

Then run `jeliyad` — it serves the app at http://127.0.0.1:7420/ and opens
it in your browser.

> Renamed from Bantaba on 2026-07-05 (see
> [docs/naming.md](https://github.com/kortiene/jeliya/blob/main/docs/naming.md)).
> Had the old formula installed? `brew uninstall bantaba`, install jeliya,
> then move your data directory across — the "Upgrading from a pre-rename
> install" note in the [README troubleshooting
> section](https://github.com/kortiene/jeliya#troubleshooting) has the exact
> commands.

The formula is maintained in the main repo at `packaging/jeliya.rb` and
copied here per release.
