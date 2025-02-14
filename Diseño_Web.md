# Lista de Etiquetas HTML y su Uso

A continuación se presenta una lista de las etiquetas HTML más utilizadas y su propósito:

---

## Estructura básica
- `<html>`: Define el inicio y el final del documento HTML.
- `<head>`: Contiene metadatos, como el título de la página y enlaces a archivos CSS o JavaScript.
- `<title>`: Define el título de la página que aparece en la pestaña del navegador.
- `<body>`: Contiene el contenido visible de la página web.

---

## Encabezados
- `<h1>` a `<h6>`: Define encabezados, donde `<h1>` es el más importante y `<h6>` el menos importante.

---

## Párrafos y texto
- `<p>`: Define un párrafo de texto.
- `<br>`: Inserta un salto de línea.
- `<hr>`: Crea una línea horizontal para separar contenido.
- `<strong>`: Texto en negrita (semánticamente importante).
- `<b>`: Texto en negrita (sin importancia semántica).
- `<em>`: Texto en cursiva (semánticamente importante).
- `<i>`: Texto en cursiva (sin importancia semántica).
- `<u>`: Subraya el texto.
- `<s>`: Texto tachado.
- `<sup>`: Texto en superíndice.
- `<sub>`: Texto en subíndice.

---

## Enlaces e imágenes
- `<a>`: Define un enlace. Ejemplo: `<a href="https://ejemplo.com">Enlace</a>`.
- `<img>`: Inserta una imagen. Ejemplo: `<img src="imagen.jpg" alt="Descripción">`.

---

## Listas
- `<ul>`: Define una lista no ordenada.
- `<ol>`: Define una lista ordenada.
- `<li>`: Define un elemento de lista.

---

## Tablas
- `<table>`: Define una tabla.
- `<tr>`: Define una fila en la tabla.
- `<th>`: Define una celda de encabezado en la tabla.
- `<td>`: Define una celda de datos en la tabla.

---

## Formularios
- `<form>`: Define un formulario.
- `<input>`: Campo de entrada (texto, contraseña, checkbox, radio, etc.).
- `<textarea>`: Área de texto multilínea.
- `<button>`: Botón clickeable.
- `<label>`: Etiqueta para un campo de formulario.
- `<select>`: Lista desplegable.
- `<option>`: Opción dentro de una lista desplegable.

---

## Multimedia
- `<audio>`: Inserta audio. Ejemplo: `<audio src="audio.mp3" controls></audio>`.
- `<video>`: Inserta video. Ejemplo: `<video src="video.mp4" controls></video>`.

---

## Contenedores
- `<div>`: Contenedor genérico en bloque.
- `<span>`: Contenedor genérico en línea.
- `<header>`: Define la cabecera de una sección o página.
- `<footer>`: Define el pie de una sección o página.
- `<main>`: Contiene el contenido principal de la página.
- `<section>`: Define una sección del documento.
- `<article>`: Define contenido independiente (como un artículo).
- `<aside>`: Define contenido relacionado pero secundario (como una barra lateral).

---

## Semántica
- `<nav>`: Define un menú de navegación.
- `<figure>`: Contiene imágenes, diagramas, etc.
- `<figcaption>`: Define la leyenda de un `<figure>`.
- `<time>`: Define una fecha o hora.

---

## Otros
- `<meta>`: Proporciona metadatos sobre el documento (en el `<head>`).
- `<link>`: Enlaza recursos externos, como hojas de estilo CSS.
- `<script>`: Inserta código JavaScript.
- `<style>`: Define estilos CSS dentro del documento.

---

### Ejemplo básico de estructura HTML
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi Página Web</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Bienvenido a mi página</h1>
    <p>Este es un párrafo de ejemplo.</p>
    <a href="https://ejemplo.com">Visita Ejemplo.com</a>
</body>
</html>
