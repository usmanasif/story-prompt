# Story Prompt

Story prompt is a cli tool for generating story prompt. It is designed for:
- Generate Story - generates a prompt using standard inputs and output to the terminal.
- Generate Stats - provide insights from a list of valid inputs to the terminal.

## Installation

story prompt is a command-line tool. To install, run:

```
rvm install 2.7.2
```

rvm is a ruby version manager. You can install it following [this](https://rvm.io/rvm/install). The above command will install ruby version 2.7.2 for your machine.

## How to Use

First make sure your ruby is installed succesfully.
```
ruby -v
```

Clone this repo and open it in terminal.
```
git clone https://github.com/usmanasif/story-prompt.git
```

### Help

To see help menu, run:
```./bin/story_prompt -h```

```
WELCOME TO STORY PROMPT GENERATOR
  Usage: ./bin/story_prompt '{ "NUMBER": "1", "UNIT_OF_MEASURE": "mile", "PLACE": "work", "ADJECTIVE": "blue", "NOUN": "rock" }'
  * ./bin/story_prompt <JSON>  Add values as json from example above or copy paste the helping string. It generates story prompt.
  * ./bin/story_prompt -s Genrate Statistics
  * ./bin/story_prompt -h Displays Help commands
```

### Generate Story

To generate story prompt, provide a valid JSON string to CLI.
```
./bin/story_prompt '{ "NUMBER": "1", "UNIT_OF_MEASURE": "mile", "PLACE": "work", "ADJECTIVE": "blue", "NOUN": "rock" }'
```

```
One day Anna was walking her 1 mile commute to work and found a blue rock on the ground.
```

### Generate Stats

To display stats for valid inputs, run:
```
./bin/story_prompt -s
```

```
STATISTICS OF THE SAVED STORY DATA
      * Max Value for Numeric Input: 3.4
      * Min Value for Numeric Input: 1.0
      * Avg Value for Numeric Input: 1.9
      * Most Common Unit of Measure: mile
      * Most Common Place: work
      * Most Common Adjective: blue
      * Most Common Noun: rock
```

## Instructions

Thanks for doing this project as part of your interview process. We appreciate your time and want to make this a fun experience. If you have any questions at all, please reach out to us and we'll get back to you.

Fork a copy of this repository to your Github account and when you have completed the project below, send a link to ben@commonpaper.com.

## Project

### Story Prompt Generator

One day Anna was walking her {{NUMBER}} {{UNIT_OF_MEASURE}} commute to {{PLACE}} and found a {{ADJECTIVE}} {{NOUN}} on the ground.

Write a command line application in any language that accepts a json string of key-value inputs for the template above. With valid input, the application sends to STDOUT the story using the inputs provided. For example, "One day Anna was walking her 2 mile commute to school and found a blue rock on the ground." The application stores a record of valid inputs locally in a file. For the template above, you can assume NUMBER to be numerical data and all other inputs to be strings containing spaces, special characters, etc. Set sensible string validations for length. Validate all inputs and handle validation errors gracefully.

Write a second command line application that sends to STDOUT statistics about the stored records, including the maximum and minimum values for numerical inputs, the most common responses for string inputs, and anything else you think might be relevant.

Instructions for installing and running your applications should be added to this README file.
