<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Appointment Details - Doctor Appointment System</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link rel="stylesheet" href="search.css">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Medilab
  * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@drappointmentsystem.com</a>
        <i class="bi bi-phone"></i> +92 300 0000000
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="home.php">DRSystem</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li class="dropdown">
            <a href="#"><span>Doctors</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li class="dropdown">
                <a href="#"><span>Doctors by Specialization</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="/drappointmentsystem/dermatologist.php">Dermatologist</a></li>
                  <li><a href="/drappointmentsystem/gynecologist.php">Gynecologist</a></li>
                  <li><a href="/drappointmentsystem/child_specialist.php">Child Specialist</a></li>
                  <li><a href="/drappointmentsystem/gastroentrologist.php">Gastroenterologist</a></li>
                  <li><a href="/drappointmentsystem/psychiatrist.php">Psychiatrist</a></li>
                  <li><a href="/drappointmentsystem/neurologist.php">Neurologist</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#"><span>Doctors by Cities</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <!-- Add your cities here -->
                  <li><a href="/drappointmentsystem/islamabad.php">Islamabad</a></li>
                  <li><a href="/drappointmentsystem/lahore.php">Lahore</a></li>
                  <li><a href="/drappointmentsystem/karachi.php">Karachi</a></li>
                  <li><a href="/drappointmentsystem/faisalabad.php">Faisalabad</a></li>
                  <li><a href="/drappointmentsystem/multan.php">Multan</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#"><span>Doctors by Disease</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <!-- Add your hospitals here -->
                  <li><a href="/drappointmentsystem/diabetes.php">Diabetes</a></li>
                  <li><a href="/drappointmentsystem/high_blood_pressure.php">High Blood Pressure</a></li>
                  <li><a href="/drappointmentsystem/typhoid_fever.php">Typhoid Fever</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li class="dropdown">
            <a href="#"><span>Hospitals</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li class="dropdown">
              <li><a href="/drappointmentsystem/hospitals_islamabad.php">Hospitals in Islamabad</a></li>
              <li><a href="/drappointmentsystem/hospitals_lahore.php">Hospitals in Lahore</a></li>
              <li><a href="/drappointmentsystem/hospitals_karachi.php">Hospitals in Karachi</a></li>
              <li><a href="/drappointmentsystem/hospitals_faisalabad.php">Hospitals in Faisalabad</a></li>
          </li>

        </ul>
        </li>
        </ul>
        </li>
        </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->


      <a href="/drappointmentsystem/search_results_doctor.php?user_id=<?php echo $user_id?>" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

    </div>
  </header><!-- End Header -->


  <?php
include("connection.php");

// Check if booking ID is provided in the URL parameter
if(isset($_GET['booking_id'])) {
    $booking_id = $_GET['booking_id'];

    // Fetch appointment details based on booking ID
    $sql_appointment = "SELECT * FROM patient_appointments WHERE appointment_id = '$booking_id'";
    $result_appointment = mysqli_query($conn, $sql_appointment);

    // Check if query executed successfully
    if ($result_appointment) {
        if(mysqli_num_rows($result_appointment) > 0) {
            // Fetch appointment details
            $row_appointment = mysqli_fetch_assoc($result_appointment);
            $appointment_date = $row_appointment['appointment_date'];
            $appointment_time = $row_appointment['appointment_time'];
            $patient_name = $row_appointment['patient_name'];
            $doctor_id = $row_appointment['doctors_id']; // Get doctor ID from appointment details

            // Fetch doctor details based on doctor ID
            $sql_doctor = "SELECT * FROM doctors WHERE doctors_id = '$doctor_id'";
            $result_doctor = mysqli_query($conn, $sql_doctor);

            // Check if query executed successfully
            if ($result_doctor) {
                if(mysqli_num_rows($result_doctor) > 0) {
                    // Fetch doctor details
                    $row_doctor = mysqli_fetch_assoc($result_doctor);
                    $doctor_name = $row_doctor['doctor_name'];
                    $doctor_location = $row_doctor['doctor_hospital']; // Assuming doctor location is stored in 'doctor_hospital' column
                    
                    // Display appointment details along with doctor details with improved design using Bootstrap
                    echo "<div style='padding-top: 10%; padding-bottom: 5%;' class='container mt-5'>
                            <div class='card'>
                                <div style='background-color: #166AB5;' class='card-header text-white'>
                                    <h2 class='card-title'>Appointment Details</h2>
                                </div>
                                <div class='card-body'>
                                    <div class='row'>
                                        <div class='col-md-6'>
                                            <p><strong>Appointment ID:</strong> $booking_id</p>
                                            <p><strong>Patient Name:</strong> $patient_name</p>
                                            <p><strong>Doctor Name:</strong> $doctor_name</p>
                                            <p><strong>Doctor Location:</strong> $doctor_location</p>
                                        </div>
                                        <div class='col-md-6'>
                                            <p><strong>Appointment Date:</strong> $appointment_date</p>
                                            <p><strong>Appointment Time:</strong> $appointment_time</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>";
                } else {
                    echo "Doctor details not found.";
                }
            } else {
                echo "Error fetching doctor details: " . mysqli_error($conn);
            }
        } else {
            echo "Appointment not found.";
        }
    } else {
        echo "Error fetching appointment details: " . mysqli_error($conn);
    }
} else {
    echo "Booking ID not provided.";
}

mysqli_close($conn);
?>






<footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>DRAppointment</h3>
            <p>
              17 KM <br>
              Raiwind Road, Lahore<br>
              Pakistan <br><br>
              <strong>Phone:</strong> +92 300 0000000<br>
              <strong>Email:</strong>
              contact@drappointmentsystem.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/search_results_doctor.php?user_id=<?php echo $user_id ?>">Book Appointment</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/dashboard.php">Cancel Appointment</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/search_results_doctor.php?user_id=<?php echo $user_id ?>">Find a Doctor</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Hospitals</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/lahore.php">Lahore</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/islamabad.php">Islamabad</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/karachi.php">Karachi</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/faisalabad.php">Faisalabad</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/multan.php">Multan</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Doctor by Specialties</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/dermatologist.php">Dermatologist</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/gynecologist.php">Gynecologist</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/child_specialist.php">Child Specialist</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/gastroentrologist.php">Gastroenterologist</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/psychiatrist.php">Psychiatrist</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/neurologist.php">Neurologist</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Doctors by Disease</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/diabetes.php">Diabetes</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/high_blood_pressure.php">High Blood Pressure</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/drappointmentsystem/typhoid_fever.php">Typhoid Fever</a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>


    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>DRSystem</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->
          Designed by <a href="home.php">WebProject</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>