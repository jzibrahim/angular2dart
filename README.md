# Gameshow
GameShow is a trivia game, my personal tutorial for Angular2Dart.

- Start from 0_bootstrap
- Milestone 1: Make card class with question, options and an answer.
   - Hint: Answer can be an index to a spot in the options list.
- Milestone 2: Make a component that displays the question and the options.
   - Step 1: Create the component.  Just like AppComponent, you'll need a template file and a Dart file.
   - Step 2: In the AppComponent, use the new CardComponent that you just implemented in step 1.
   - Step 3: Create an instance of the model class, Card, to be used in the CardComponent.
   - Step 4: Start by showing the question from the card.
   - Step 5: Only show the question if the card exists (is not null).
   - Step 6: Use `material-select` and `material-select-item` to display the options.
   - Step 7: Use `*ngFor` to iterate over all the options, no matter how many there are.
- Milestone 3: When user chooses an option, show either a 'try again' or a 'correct' message.
   - Step 1: Use `*ngIf` directive or the `hidden` attribute to show or hide the different text.
   - Step 2: Use `glyph` with the `check` icon for 'correct' and `cancel` icon for 'incorrect'.
- Milestone 4: Write tests: write a page object for the card component and tests to make sure the correct information
      is shown.
   - Run tests by running `pub run angular_test --test-arg=--tags=aot --test-arg=--platform=dartium --verbose --test-arg=--reporter=expanded`