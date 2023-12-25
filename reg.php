<?php
$to = $_GET["email"];
$name = $_GET["fname"];
$subject = 'Safari Registration Confirmed';

// Validate and sanitize email input
$to = filter_var($to, FILTER_SANITIZE_EMAIL);

$headers  = "From: " . strip_tags($to) . "\r\n";
$headers .= "Reply-To: " . strip_tags($to) . "\r\n";
$headers .= "CC: akshashw@gmail.com\r\n";
$headers .= "MIME-Version: 1.0\r\n";
$headers .= "Content-Type: text/html; charset=UTF-8\r\n";

$message = "<p><strong>Subject: Nisarg Safari Registration Confirmation</strong></p>

<p>Dear $name,</p>

<p>Thank you for choosing Nisarg Safari for your upcoming adventure! We are thrilled to confirm your registration for the safari experience of a lifetime. Get ready to embark on a journey through the wild, where you will witness the beauty of nature and encounter magnificent wildlife.</p>

<p>Here are the details of your registration:</p>

<ul>
    <li>Name: $name</li>
    <li>Email: $to</li>
    <li>Safari Date: 18th Jan, 2023</li>
    <li>Safari Package: Zone1</li>
</ul>

<p>Please ensure that you have all the necessary documentation and read our guidelines for a safe and enjoyable safari experience. If you have any questions or need further assistance, feel free to contact our customer service team at 842255566.</p>

<p>We look forward to welcoming you to Nisarg Safari and creating unforgettable memories together. Prepare for an adventure that will leave you in awe of the wonders of the wild!</p>

<p>Best regards,<br>Nisarg Safari Team</p>";

mail($to, $subject, $message, $headers);
?>
