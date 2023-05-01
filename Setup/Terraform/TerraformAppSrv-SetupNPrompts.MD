# Roadshow Demo Setup & Instructions

## Setup

1. See main [Setup](../Setup.MD) for VS Code & system setup.
2. Run through this demo prior to performing. Run the demo using the mainprep.tf file in this folder. Running the demo prior will make the live demo go quicker. Copilot will have the code suggestions in memory.

3. Copy the propmts with Cntl-C to remove typing in a demo. Make sure to include the "#" in your copy.

4. In the main folder open Main.tf  in preparation for the live demo (it should be blank).

### Prompts

Copy code block as one. This will help the storyline go quicker.

    # Create a new resource group called "roadshow-rg" in "eastus2" region with an app service plan, a linux funcation app and a storage account.

    # create a resource group

## Step by Steps Scipt & Instructions

1. ***PRESENTER:*** "Today we are going to demostrate how to create a serverless linux app services using GitHub Copilot. Here we have our Terraform profider file open"

2. ***ACTION:***  Flip to the main.tf tab
3. ***PRESENTER:***: "I'm going to enter a comment with instructions for Copilot to know what I want to code for me."
4. ***ACTION:***  Ctrl-V to paste in the code block. Press **[ENTER]**
5. ***PRESENTER:*** "My organization likes an order to thier templates. I have prompted Copilot to begin the template with the resource group"
6. ***ACTION:***  Press **[TAB]** to accept suggestion
7. ***ACTION:***  Press **[ENTER]**, **[ENTER]** then **[TAB]**. Copilot will suggest the next serivce via a comment.
8. ***PRESENTER:*** "Look how Copilot comments the code blocks prior to suggesting the code, making it easier to read code blocks int he future. Continuing on GitHub will suggest code for the rest of the services from the orginal comment"
9. ***ACTION:***  While saying 8. Press **[ENTER]**. Once code is suggested press **[TAB]**.
10. ***PRESENTER:***"Let's finish out the app service with a few more key strokes.
11. ***ACTION:***  Press **[ENTER]**, **[ENTER]**, **[TAB]**, pause 1-2 second for the cursor to catch up, **[ENTER]**
12. ***ACTION:***  Once code appears press **[TAB]**, pause 1-2 second for the cursor to catch up, **[ENTER]**, **[ENTER]**
13. Once you hit **[TAB]** for the creation of the "funcation app", stop pressing **[ENTER]**. The demo is complete.
14. ***PRESENTER:*** "Copilot is pausing for me to enter more information about the code to deploy. We are going to stop here. In a matter of 2 comments and a few erters & tabs, I have terraform code with comments for a new linux app service function app. Thank you"
15. ***ACTION:***  Move to the slides for closing Copilot session
