<?php
include 'config.php';
$query = new Database();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Contact</title>
  <meta name="description" content="Contact us">
  <meta name="keywords" content="contact, Chakan, Pune">

  <link href="favicon.ico" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

  <!-- Bootstrap -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

<body class="contact-page">

<?php include 'includes/header.php'; ?>

<main class="main">

  <!-- Page Title -->
  <div class="page-title" data-aos="fade">
    <div class="container">

      <nav class="breadcrumbs">
        <ol>
          <li><a href="./">Home</a></li>
          <li class="current">Contact</li>
        </ol>
      </nav>

      <h1>Contact</h1>

    </div>
  </div>

  <!-- Contact Section -->
  <section id="contact" class="contact section">

    <div class="container" data-aos="fade-up" data-aos-delay="100">

      <!-- Contact Information -->
      <div class="row gy-4">

        <?php if (isset($contact_boxData) && !empty($contact_boxData)): ?>

          <?php foreach ($contact_boxData as $contact): ?>

            <div class="col-lg-<?php echo ($contact['id'] == 1) ? '6' : '3'; ?> col-md-6">

              <div class="info-item d-flex flex-column justify-content-center align-items-center"
                   data-aos="fade-up"
                   data-aos-delay="100">

                <i class="<?php echo htmlspecialchars($contact['icon']); ?>"></i>

                <h3>
                  <?php echo htmlspecialchars($contact['title']); ?>
                </h3>

                <p>
                  <?php echo htmlspecialchars($contact['value']); ?>
                </p>

              </div>

            </div>

          <?php endforeach; ?>

        <?php endif; ?>

      </div>

      <!-- Map + Contact Form -->
      <div class="row gy-4 mt-1">

        <!-- Google Map -->
        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">

          <div class="map-container">

            <iframe
              src="https://www.google.com/maps?q=Chakan,Pune,Maharashtra,India&output=embed"
              width="100%"
              height="450"
              style="border:0;"
              allowfullscreen=""
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade">
            </iframe>

          </div>

        </div>

        <!-- Contact Form -->
        <div class="col-lg-6">

          <form
            action="send_message.php"
            method="post"
            class="php-email-form"
            id="contactForm"
            data-aos="fade-up"
            data-aos-delay="100">

            <div class="row gy-4">

              <!-- Name -->
              <div class="col-md-6">

                <input
                  type="text"
                  name="name"
                  class="form-control"
                  placeholder="Your Name"
                  required
                  maxlength="255">

              </div>

              <!-- Email -->
              <div class="col-md-6">

                <input
                  type="email"
                  name="email"
                  class="form-control"
                  placeholder="Your Email"
                  required
                  maxlength="255">

              </div>

              <!-- Subject -->
              <div class="col-md-12">

                <input
                  type="text"
                  name="subject"
                  class="form-control"
                  placeholder="Subject"
                  required
                  maxlength="255">

              </div>

              <!-- Message -->
              <div class="col-md-12">

                <textarea
                  name="message"
                  class="form-control"
                  rows="6"
                  placeholder="Message"
                  required>
                </textarea>

              </div>

              <!-- Submit -->
              <div class="col-md-12 text-center">

                <button type="submit" id="submitButton">
                  Send Message
                </button>

                <div
                  class="sent-message"
                  id="successMessage"
                  style="display:none;">
                  Your message has been sent successfully!
                </div>

                <div
                  class="error-message"
                  id="errorMessage"
                  style="display:none;">
                </div>

              </div>

            </div>

          </form>

        </div>

      </div>

    </div>

  </section>

</main>

<?php include 'includes/footer.php'; ?>

<!-- Scroll Top -->
<a
  href="#"
  id="scroll-top"
  class="scroll-top d-flex align-items-center justify-content-center">

  <i class="bi bi-arrow-up-short"></i>

</a>

<!-- Vendor JS -->
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>

<script>

document.getElementById('contactForm').addEventListener('submit', function(e) {

  e.preventDefault();

  const form = this;
  const submitButton = document.getElementById('submitButton');

  const successMessage = document.getElementById('successMessage');
  const errorMessage = document.getElementById('errorMessage');

  submitButton.disabled = true;
  submitButton.innerText = 'Sending...';

  successMessage.style.display = 'none';
  errorMessage.style.display = 'none';

  const formData = new FormData(form);

  fetch('send_message.php', {
    method: 'POST',
    body: formData
  })

  .then(response => response.json())

  .then(data => {

    if (data.status === 'success') {

      successMessage.style.display = 'block';

      errorMessage.style.display = 'none';

      form.reset();

      setTimeout(() => {
        successMessage.style.display = 'none';
      }, 3000);

    } else {

      errorMessage.innerText =
        data.message || 'Something went wrong. Please try again.';

      errorMessage.style.display = 'block';

    }

  })

  .catch(error => {

    console.error(error);

    errorMessage.innerText =
      'Unable to send message. Please try again.';

    errorMessage.style.display = 'block';

  })

  .finally(() => {

    submitButton.disabled = false;
    submitButton.innerText = 'Send Message';

  });

});

</script>

</body>
</html>