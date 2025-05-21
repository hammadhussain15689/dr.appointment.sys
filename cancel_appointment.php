<?php
// Start session and check if user is logged in
session_start();
if (!isset($_SESSION['user_id'])) {
    // Redirect to login page if user is not logged in
    header("Location: login.php");
    exit;
}

// Include database connection file
require_once "connection.php";

// Check if appointment ID is provided
if (isset($_POST['appointment_id'])) {
    // Get appointment ID from POST data
    $appointment_id = $_POST['appointment_id'];

    // Prepare and execute SQL to delete appointment record
    $query = "DELETE FROM patient_appointments WHERE appointment_id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $appointment_id);

    if ($stmt->execute()) {
        // Appointment canceled successfully
        $_SESSION['success_message'] = "Appointment canceled successfully.";
    } else {
        // Error canceling appointment
        $_SESSION['error_message'] = "Error canceling appointment: " . $conn->error;
    }
} else {
    // No appointment ID provided
    $_SESSION['error_message'] = "Appointment ID not provided.";
}

// Redirect back to the dashboard page
header("Location: dashboard.php");
exit;
?>
