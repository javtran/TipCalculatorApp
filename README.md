# Pre-work - TipNSplit

**TipNSplit** is a tip calculator application for iOS.

Submitted by: **Jackson Tran**

Time spent: **8** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [x] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Tip splitting feature
- [x] User can determine the tip percentages by using the slider
- [x] Settings page for dark mode

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/BnPZFcq.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='https://i.imgur.com/0BHzXUw.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes
The most challenging part while doing this prework was understanding how xcode works, especially how swift is implemented with the UI work. One struggle I had besides the base part of the prework was making the settings page. I wanted to do a dark mode for the tip calculator, but I realized that I needed to understand how to work with 2 pages (how to change appearances of both pages). But through Userdefaults and view controller lifecycle I understood how to change variables and features of both pages. It was overall a very fun experience. 

## License

    Copyright [2022] [Jackson Tran]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
