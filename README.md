# Little-Lemon

This is a SwiftUI-based iOS application that allows users to browse Little Lemon restaurant locations and make reservations.

## Project Overview

The app demonstrates:
- Modular view creation
- Dynamic UI updates based on application state
- Form input validation
- SwiftUI navigation using NavigationView and NavigationLink
- Basic alert handling for form errors

## Features

- Locations Tab:
  - Displays a list of restaurant locations.
  - Allows the user to select a location to make a reservation.

- Reservation Tab:
  - Displays reservation details after confirmation.

- Reservation Form:
  - Form fields include number of guests, reservation date and time, name, phone, email, and optional special requests.
  - Prevents 0 as a valid party size (minimum 1 person).
  - Validates mandatory fields and shows an alert if any errors are found.

## Project Structure

- MainView.swift - Manages the tab view with Locations and Reservation tabs.
- LocationsView.swift - Displays the logo, heading, and list of restaurant locations.
- ReservationForm.swift - Handles the reservation form input and validation.
- RestaurantView.swift - Displays a restaurant's details.
- LittleLemonLogo.swift - Displays the Little Lemon logo.
- Model.swift - Application state model containing restaurant list and reservation details.

## Important Notes

- RestaurantLocation is a Hashable struct and is identified in lists by its phoneNumber property.
- Form validation ensures meaningful input and shows alerts for errors.
- This project uses an in-memory model (no persistent storage).
