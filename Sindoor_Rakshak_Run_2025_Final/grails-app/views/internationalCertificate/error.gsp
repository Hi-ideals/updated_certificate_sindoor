<!DOCTYPE html>
<html>
<head>
    <title>Payment Error</title>
</head>
<body>
    <h2 style="color:red;">Something went wrong!</h2>
    <p>${flash.message ?: 'Payment process failed, please try again.'}</p>
    <a href="${createLink(controller: 'internationalCertificate', action: 'show', id: params.id)}">Go Back</a>
</body>
</html>
