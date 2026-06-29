# inc.win.base.pb-json 🧩

![PowerBuilder](https://img.shields.io/badge/PowerBuilder-2025-005C84?style=flat-square&logo=sap&logoColor=white)
![JSON](https://img.shields.io/badge/JSON-OOP-000000?style=flat-square&logo=json&logoColor=white)
![u_json](https://img.shields.io/badge/clase-u__json-1F6FEB?style=flat-square)
![Blog](https://img.shields.io/badge/blog-rsrsystem-FF5722?style=flat-square&logo=blogger&logoColor=white)

## 📋 ¿Qué es esto?

Una **librería base (un "include") para manejar JSON en PowerBuilder de forma orientada a objetos**. Todo gira
en torno a una única clase, **`u_json`**, que sirve a la vez para **parsear, generar, recorrer y manipular**
un documento JSON sin salir del mismo objeto.

La gracia es que cada nodo del árbol JSON **es a su vez un `u_json`**: un objeto, un array, un string, un
número… Te mueves por el documento pidiendo nodos hijos y cada uno sabe responder qué es y qué vale. Muy
cómodo y muy reutilizable: lo metes en tu workspace como librería de apoyo y a tirar.

## ✨ Cómo funciona

Es la típica navaja suiza para JSON. Algunas de las cosas que `u_json` sabe hacer:

- **Cargar / volcar:** `of_load_string()`, `of_load_file()`, `of_get_json_string()`, `of_save_to_file()`.
- **Recorrer el árbol:** `of_get_node(key)` o `of_get_node(index)`, `of_get_parent()`, `of_get_count()`,
  `of_get_key()`, `of_get_index()`, `of_key_exists()`.
- **Leer valores tipados:** `of_get_value_string()`, `of_get_value_number()`, `of_get_value_boolean()`,
  `of_get_value_date()`, `of_get_value_datetime()`, `of_get_value_time()`, `of_get_value_blob()`.
- **Construir / modificar:** `of_add_node()`, `of_set_value()` (sobrecargado por tipo), `of_set_value_null()`,
  `of_replace_node()`, `of_delete_node()`, `of_change_key()`, `of_create_copy()`, `of_reset()`.
- **Saber qué tienes delante:** `of_get_type()` devuelve el `jsonitemtype` (objeto, array, string, número…).

Todo con **excepciones** (`throws exception`), así que los errores de parseo o de acceso se controlan limpio.

## 🛠️ Requisitos

- **PowerBuilder 2025** para abrir la solución (`inc.win.base.pb-json.pbsln`).
- La librería vive en `json.pbl` y solo necesita la clase `u_json`.

## ▶️ Cómo probarlo

1. Clona el repo (viene **en modo solución**).
2. Abre `inc.win.base.pb-json.pbsln` en el IDE de PowerBuilder.
3. Añade `json.pbl` a la lista de librerías de tu target y empieza a usar `u_json`:

   ```powerscript
   u_json lu_json
   lu_json = create u_json
   lu_json.of_load_string(ls_json)        // parsear
   ls_nombre = lu_json.of_get_node("nombre").of_get_value_string()
   ```

## 🔗 Repo PowerBuilder

Ejemplo publicado **en modo solución**:
<https://github.com/rasanfe/inc.win.base.pb-json>

## 🙌 Créditos

`u_json` es un proyecto **open source de [informaticon](https://github.com/informaticon)**. Tenéis toda la
documentación de la clase en su **[Wiki oficial](https://github.com/informaticon/inc.win.base.pb-json/wiki)**.
Si encontráis fallos o queréis proponer mejoras, lo suyo es usar los **issues y pull requests** del repo
original. Aquí lo recojo para enseñároslo y usarlo en los ejemplos del blog. ¡Todo el mérito para sus autores!

---

> ¡Nos vemos en el próximo artículo! Y recuerda: en PowerBuilder, los límites solo están en nuestra imaginación. 🚀

📨 **Blog:** <https://rsrsystem.blogspot.com/>
