resource "aws_ses_template" "tfer--ForgotPasswordTemplateEnglish" {
  html    = "<p>Hello{{firstName}},</p><p>A request to reset your Circle K Lift Portal password has been made. If you  did not make this request, please ignore this email. If you made this request, click the link below.</p><div><a href=\"{{portalUrl}}/resetpassword/{{resetId}}\">{{portalUrl}}/resetpassword/{{resetId}}</a></div><p>Please note that you have one hour to reset your password.</p><p>Thank you,</p><p>Lift Team</p>"
  name    = "ForgotPasswordTemplateEnglish"
  subject = "[Circle K] Forgot Password Reset"
  text    = "Please reset your password for the Circle K Lift Portal password"
}

resource "aws_ses_template" "tfer--ForgotPasswordTemplateSpanish" {
  html    = "<p>Hola{{firstName}},</p><p>Se hizo un solicitud para restablecer su contraseña para Circle K Lift Portal. Si no hiciste, ignora este email por favor. Si hiciste el solicitud, haga clic el enlace abajo.</p><div><a href=\"{{portalUrl}}/resetpassword/{{resetId}}\">{{portalUrl}}/resetpassword/{{resetId}}</a></div><p>Por favor anota que tiene un solo hora para restablecer su contraseña.</p><p>Gracias,</p><p>Equipo de Lift</p>"
  name    = "ForgotPasswordTemplateSpanish"
  subject = "[Circle K] Restablecer Su Contraseña"
  text    = "Por favor restablecer su contraseña para Circle K Lift Portal"
}

resource "aws_ses_template" "tfer--forgot-password-en" {
  html    = "<p>Hello{{firstName}},</p><p>A request to reset your Circle K Lift Portal password has been made. If you  did not make this request, please ignore this email. If you made this request, click the link below.</p><div><a href=\"{{portalUrl}}/resetpassword/{{resetId}}\">{{portalUrl}}/resetpassword/{{resetId}}</a></div><p>Please note that you have one hour to reset your password.</p><p>Thank you,</p><p>Lift Team</p>"
  name    = "forgot-password-en"
  subject = "[Circle K] Forgot Password Reset"
  text    = "Please reset your password for the Circle K Lift Portal password"
}

resource "aws_ses_template" "tfer--forgot-password-es" {
  html    = "<p>Hola{{firstName}},</p><p>Se hizo un solicitud para restablecer su contraseña para Circle K Lift Portal. Si no hiciste, ignora este email por favor. Si hiciste el solicitud, haga clic el enlace abajo.</p><div><a href=\"{{portalUrl}}/resetpassword/{{resetId}}\">{{portalUrl}}/resetpassword/{{resetId}}</a></div><p>Por favor anota que tiene un solo hora para restablecer su contraseña.</p><p>Gracias,</p><p>Equipo de Lift</p>"
  name    = "forgot-password-es"
  subject = "[Circle K] Restablecer Su Contraseña"
  text    = "Por favor restablecer su contraseña para Circle K Lift Portal"
}
