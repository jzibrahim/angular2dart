# Gameshow
GameShow is a trivia game, my personal tutorial for Angular2Dart.

- Start from 0_bootstrap
- Milestone 1: Make card class with question, options and an answer.
   - Hint: Answer can be an index to a spot in the options list.
- Milestone 2: Make a component that displays the question and the options.
   - Hint: use `*ngFor` to iterate and `material-select` for the list.
- Milestone 3: When user chooses an option, show either a 'try again' or a 'correct' message.
   - Hint: Use `*ngIf` and `glyph` with the `check` icon.
- **Bonus** Milestone 4: Write tests: write a page object for the card component and tests to make sure the correct
information is shown.
   - Hint: After clicking the item, you'll need to run the following command to get an updated view of the page object:
   `appPO = await fixture.resolvePageObject(AppPO);`