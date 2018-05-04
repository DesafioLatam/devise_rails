# Requisitos

Este tutorial asume lo siguiente

* Tienes instalado Bootstrap 3 a través de la sección (a) del [README de Bootstrap for Sass](https://github.com/twbs/bootstrap-sass).

* Se ocupará el pre procesador de CSS ,[Sass](https://sass-lang.com/guide), para la escritura y manejo de CSS. Más detalles en [¿Qué es Sass?](https://www.creativebloq.com/web-design/what-is-sass-111517618).

* Se usa [Rails-layout](https://github.com/RailsApps/rails_layout) para reemplazar layouts/application.html.erb para aplicar los estilos de Bootstrap y generar las vistas de devise. Instalar normalmente como una gema y ejecutar el comando indicado. Leer la sección **The “layout:install” Command** para un mejor entendimiento de lo que sucede.

```
rails generate layout:install bootstrap3
```

* Turbolinks fueron removidos. [Tutorial](http://codkal.com/rails-how-to-remove-turbolinks/).

* [Font Awesome](https://github.com/FortAwesome/font-awesome-sass) para íconos awesome :).

# Estado del proyecto

Este proyecto es un proyecto base que contempla los siguientes elementos aplicados y funcionalidades:

## Elementos Aplicados

1. Se instaló Bootstrap versión 3.3.7 para poder integrarlo utilizando Sass. Sin embargo, para hacer su uso más simple se eliminó el archivo creado **1st_load_framework.css.scss** por la gema Rails Layout indicado en la sección **The “layout:install” Command** y se utilizó el archivo **app/assets/stylesheets/application.scss** para importar bootstrap.

2. Existe una barra superior responsiva con las secciones HOME y Users.

3. Existe la sección de perfil del usuario para hacer sign up (registrarse), sign in (iniciar sesión) y sign out (cerrar sesión).

## Funcionalidades

1. Página inicial de bienvenida donde solo los usuarios visitantes (no registrados ni logeados) pueden visitar

2. Se creará un sistema básico para crear usuarios a través de [Scaffold](http://guides.rubyonrails.org/v3.2.9/getting_started.html#getting-up-and-running-quickly-with-scaffolding) de Rails. Esto quiere decir que se puede hacer el [CRUD](https://es.wikipedia.org/wiki/CRUD) de usuarios en la aplicación. Sólo los usuarios logeados pueden acceder a esta funcionalidad.

# La gema Devise

Este proyecto se divide en varios branchs para que se pueda visualizar cómo se puede aplicar Devise paso a paso sobre un proyecto que tiene una librería como Bootstrap aplicado. Los branch son:

## Branch 01: 01_devise_instalado 

Proyecto rails con todos los [elementos aplicados](https://github.com/enaguero/devise_rails/tree/01_devise_instalado#elementos-aplicados). Solo contempla la incorporación de la gema Devise, la instalación de Devise, agregar devise al modelo User y la generación de Scaffold del modelo User. Los comandos asociados son:

```
$ rails generate devise:install
$ rails g scaffold User name:string last_name:string phone:string address:string
$ rails generate devise User
```

En este branch se puede acceder a todas las secciones, se puede tratar de registrar usuarios solo con email y password, se pueden visualizar en la lista general, sin embargo, no se verán campos.  

Para más detalle, ver la [documentación oficial de Devise](https://github.com/plataformatec/devise#getting-started).

# Fuentes

1. [Ícono de usuario para foto de perfil](http://jsfiddle.net/bJcrk/2/).
2. [Iniciar con Devise - Documentación Oficial](https://github.com/plataformatec/devise#getting-started).