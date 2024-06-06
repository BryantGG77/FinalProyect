## Nombre del Proyecto

Proyecto final PeakU

## Para instalar y ejecutar este proyecto localmente, sigue estos pasos:

``` Paso 1 iniciar el Vite Server ```

Primero, necesitaras iniciar el servidor de **Vite**, una vez iniciado entrar a la url proporcionada [http://localhost:5173]

``` bash
npm run dev 
```

``` Paso 2 iniciar el FastApi Server ```

Segundo, necesitaras iniciar el servidor de **FastAPI**, una vez iniciado entrar a la url proporcionada [http://localhost:8000]
Dentro de la carpeta raiz del FastAPI ejecutar los siguientes comandos

``` bash
.\fastAPI\Scripts\activate 

uvicorn main:app --reload
```
_Una vez iniciado estos dos servidores podremos visualizar como se trae la informacion de las diferentes cards utilizadas en las secciones directamente de **APIs** y adicional a esto se maneja el boton de **Login** para la creacion de usuarios los cuales se pueden evidenciar en el boton de **profile**._

