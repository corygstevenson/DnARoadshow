# Roadshow Demo Setup & Instructions

## Setup

1. See main [Setup](../Setup.MD) for VS Code & system setup.
2. Create a new file in the **Setup/cSharpCoffeeApp** folder called 'program.cs'. This will be used for presentation practice.
3. Run through the demo with the [Step by Steps Script & Instructions](#step-by-steps-script-and-instructions) once to make sure everything works.
4. Close this program.cs file and delete the file.
5. Move up to the **Demos/cSharpCoffeeApp** folder and create a new file called program.cs. This will be used for the live demo.
   1. Only open this file to make sure it is blank and ready for the demo ***DO NOT PASTE ANY THING IN THIS FILE UNTIL THE LIVE DEMO!!!***
6. Copy the prompts with Cntl-C to remove typing in a demo.

### Prompts

Copy code block as one. This will help the demo go quicker.

    //Write a console app to create a static webpage showing Microsofts committment to coffee using the images in the 'C:\\images' folder.

    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using System.IO;

## Step by Steps Script and Instructions

1. ***ACTION:*** If you have not already Crtl-C the prompts section above, now would be a good time to do so.
2. ***PRESENTER:*** The three pillars of IT are Developers, Operations, and Coffee. Without coffee we would not be here. To show how much MSFT professionals enjoy coffee, we are going to ask Copilot to help us create a static website. We are going to ask Copilot to create a console app, retrieve images from a folder, then render a static webpage we can upload to Azure. Here we have our program.cs file open"
3. ***ACTION:*** Open the program.cs file in the cSharpCoffeeApp folder. It should be blank.
4. ***PRESENTER:*** "I'm going to paste a C# comment describing the type of console app I want Copilot to create.
5. ***ACTION:*** Paste the comment from the prompts section. Press **[ENTER]**, **[ENTER]** to start the code generation. Copilot might take a 5-10 seconds.
6. ***ACTION:*** When the code gernation is complete, hover the pointer over the word 'namespace'. A tooltip will appear with the option to choose a different code suggestion.
7. ***PRESENTER:*** - Point out the tooltip menu, how Copilot gives us the option to choose a different code suggestion. Then say something like "Before we choose a code suggestion, I want to click this ellipse to see what other code suggestions Copilot has for us."
8. ***ACTION:*** Click the ellipse, you should see 'Open Completion Panel' in the drop down menu. Click 'Open Completion Panel'. The completion panel will open on the right side of the screen.
   1. Generating code suggestions will take about 15+ seconds. Move the next speaking part to explain what is happening.
9. ***PRESENTER*** "Right now, Copilot is generating code ten suggestions for us. Copilot is using a machine learning model trained on billions of lines of code to generate these additional suggestions. In a few moments, we will see a list suggestions in the completion panel."
10. ***ACTION:*** Wait for the code suggestions to appear in the completion panel. Tip: Sometimes you have to click the first window to get the completions to appear quicker.
11. ***PRESENTER*** "We can scroll through the list if we like. For now I'm going to click on 'accept solution. This will accept the code suggestion and close the completion panel."
12. ***ACTION:*** Click 'Accept Solution' in the completion panel. This will write the code to the program.cs file and completion panel will close.
      1. Make sure to choose a solution with correct spellings. Copilot will make some interesting suggestions.
13. ***PRESENTER*** Wrap up the demo with some closing remarks. i.e. "In this demo we can see how Copilot can assist developers in being more productive..."
14. ***ACTION:*** Move back to slides or next demo.

## Notes

- The sql file is not needed for this demo. It is included to show that Copilot can generate SQL code as well.
