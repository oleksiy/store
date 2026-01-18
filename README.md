# README

## Debugging Instructions
1. `bundle install`
2. `rdbg -n --open --port 55195 --host localhost -- bin/rails server`
3. In a separate terminal or tab run `rdbg -A 127.0.0.1 55195`

### OR
Just use built-in debugger configuration in your IDE. Everything's vanilla.
