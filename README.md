# App Form

Aplicación Flutter de la actividad 3.2 del tercer corte. Incluye un formulario
de login validado, autenticación local con tres usuarios, navegación con
`go_router`, dashboard y cierre de sesión.

## Usuarios de prueba

| Correo | Contraseña |
| --- | --- |
| isaac@gmail.com | 1234 |
| ivan@gmail.com | 1234 |
| ricorico@gmail.com | 1234 |

Ivan aparece con el rol de Profesor y cada usuario tiene una imagen de perfil
en el dashboard.

## Ejecución

```bash
flutter pub get
flutter run
```

La aplicación inicia en `/login`. Después de autenticarse, el usuario es
redirigido a `/dashboard`; el botón de logout elimina la sesión y vuelve al
formulario.
