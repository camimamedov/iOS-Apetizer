# Meal Order App

A simple meal ordering app built with SwiftUI that allows users to choose items from a menu, manage their account information, and review their orders with the final price.

## Features

1. **Menu View**  
   - Displays a list of meals available for order.
   - Users can select meals and add them to their order.
   - <img src="https://github.com/user-attachments/assets/b70d8cec-55df-43ed-b68b-7e2714bb908a" width="200">  <img src="https://github.com/user-attachments/assets/678e879d-6ee2-4039-b43c-eb786419ba30" width="200"> 
   
2. **Account Info View**  
   - Allows users to save their account information, such as name and email address.
   - Uses `UserDefaults` to persist the account information locally.
   - Includes email validation using a regular expression (RegEx) to ensure correct email format.
   -  <img src="https://github.com/user-attachments/assets/80c654d2-a8ff-4a19-be2c-4d2aceab3a10" width="200">  <img src="https://github.com/user-attachments/assets/4fbf491e-0b25-45c5-b549-aea12783c1df" width="200"> 

3. **Orders View**  
   - Displays a summary of all items added to the order.
   - User can remove added items with sliding animation.
   - Shows the final total price for the order.
   -  <img src="https://github.com/user-attachments/assets/2b74f803-1e16-4d24-b782-738359eba175" width="200">  <img src="https://github.com/user-attachments/assets/3baea814-e979-4b30-9bd8-a1706df8ea3c" width="200"> 

## App Structure

- **Menu View**:  
  This view lists all available menu items. Users can add items to their order, and the selected items are shown in the Orders View.
  
- **Account Info View**:  
  Here, users can save their personal information, such as their name and email address. Account details are stored using `UserDefaults`, and email validation is done using regular expressions to ensure proper formatting.

- **Orders View**:  
  The Orders View presents all items that have been added to the user's order along with the total cost. Users can review their order before completing it.

## Technologies Used

- **SwiftUI**: The UI framework used to build the app.
- **UserDefaults**: For persisting user data like account information.
- **RegEx**: For validating email addresses in the Account Info View.

## Installation and Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/meal-order-app.git
