# Meal Order App

A simple meal ordering app built with SwiftUI that allows users to choose items from a menu, manage their account information, and review their orders with the final price.

## Features

1. **Menu View**  
   - Displays a list of meals available for order.
   - Users can select meals and add them to their order.
   
2. **Account Info View**  
   - Allows users to save their account information, such as name and email address.
   - Uses `UserDefaults` to persist the account information locally.
   - Includes email validation using a regular expression (RegEx) to ensure correct email format.

3. **Orders View**  
   - Displays a summary of all items added to the order.
   - Shows the final total price for the order.

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
